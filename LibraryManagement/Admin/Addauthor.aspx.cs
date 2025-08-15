using System;
using System.Collections.Generic;
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
    }
}