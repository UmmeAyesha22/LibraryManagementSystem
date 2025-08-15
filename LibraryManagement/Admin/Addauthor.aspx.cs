using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement.Admin
{
    public partial class Addauthor : System.Web.UI.Page
    {
        DBConnect dbcon = new DBConnect();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Autogenerate();
                BindRepeater();
            }
        }

      

        protected void btnAdd_Click(object sender, EventArgs e)
        {
             cmd = new SqlCommand("sp_InsertAuthor", dbcon.GetCon());
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id",txtID.Text);
            cmd.Parameters.AddWithValue("@name",txtAuthorName.Text);
            dbcon.OpenCon();
            if (cmd.ExecuteNonQuery() == 1)
            {
                dbcon.CloseCon();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Success','Saved successfully','success')", true);
                clrcontrol();
                BindRepeater();
                Autogenerate();

            }
            else
            {
                dbcon.CloseCon();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Error','record failed','error')", true);
            }
        }
        protected void clrcontrol()
        {
            txtAuthorName.Text = txtID.Text = String.Empty;
            txtID.Focus();
        }

        public void Autogenerate()
        {
            try
            {
                int r;
                dbcon.OpenCon();
                cmd = new SqlCommand("select max(author_id)as ID from  author_master_tbl", dbcon.GetCon());
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    string d = dr[0].ToString();
                    if (d == "")
                    {
                        txtID.Text = "101";
                    }
                    else
                    {
                        r = Convert.ToInt32(dr[0].ToString());
                        r = r + 1;
                        txtID.Text = r.ToString();

                    }
                    txtID.ReadOnly = true;
                }
                dbcon.CloseCon();
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert(" + ex.Message + ")</script>");

            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName=="edit")
            {
                string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { '&' });
                string id =commandArgs[0];
                SearchDataForUpdate(Convert.ToInt32(id));
            }
            else if(e.CommandName == "delete"){

            }
        }

        private void SearchDataForUpdate(int idd)
        {
            cmd = new SqlCommand("", dbcon.GetCon());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@ID",idd);
            SqlDataAdapter da =new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();
            da.Fill(ds, "dt");
            dbcon.CloseCon();
            if(ds.Tables[0].Rows.Count > 0)
            {
                Session["AuthorID"] = ds.Tables[0].Rows[0]["author_id"].ToString();
                txtID.Text = ds.Tables[0].Rows[0]["author_id"].ToString();
               txtAuthorName.Text = ds.Tables[0].Rows[0]["author_name"].ToString();
            }
            else
            {
                Response.Write("<script> alert('Error! No record found');</script>");
            }
        }

        protected void BindRepeater()
        {
            cmd = new SqlCommand("spGetAuthor", dbcon.GetCon());
            cmd.CommandType = CommandType.StoredProcedure;
            DataTable dt =new DataTable();
            dbcon.OpenCon();
            SqlDataAdapter da =new SqlDataAdapter(cmd);
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

        }
    }
}