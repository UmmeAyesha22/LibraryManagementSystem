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
    public partial class Add_publisher : System.Web.UI.Page
    {
        DBConnect dbcon = new DBConnect();
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Autogenerate();
                Bindrecord();
                btnAdd.Visible = true;
                btnupdate.Visible = false;
                btnCancel.Visible = true;
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                insertpublisher();            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal(' Validation Error','try to insert valid data','error')", true);
            }

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("sp_UpdatePublisher", dbcon.GetCon());
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", txtpublisherID.Text);
            cmd.Parameters.AddWithValue("@name", txtpublisherName.Text);
            dbcon.OpenCon();
            if (cmd.ExecuteNonQuery() == 1)
            {
                dbcon.CloseCon();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Success','Updated successfully','success')", true);
                clrcontrol();
                Bindrecord();
                Autogenerate();
                btnAdd.Visible = true;
                btnupdate.Visible = false;
                btnCancel.Visible = false;

            }
            else
            {
                dbcon.CloseCon();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Error','Updating failed','error')", true);
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHome.aspx");
        }
        public void Autogenerate()
        {
            try
            {
                int r;
                dbcon.OpenCon();
                cmd = new SqlCommand("select max(publisher_id)as ID from publisher_master_tbl", dbcon.GetCon());
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    string d = dr[0].ToString();
                    if (d == "")
                    {
                        txtpublisherID.Text = "501";
                    }
                    else
                    {
                        r = Convert.ToInt32(dr[0].ToString());
                        r = r + 1;
                        txtpublisherID.Text = r.ToString();

                    }
                    txtpublisherID.ReadOnly = true;
                }
                dbcon.CloseCon();
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert(" + ex.Message + ")</script>");

            }
        }

        protected void Bindrecord()
        {
            cmd = new SqlCommand("sp_getPublisher", dbcon.GetCon());
            cmd.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            dbcon.OpenCon();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            RptPublisher.DataSource = dt;
            RptPublisher.DataBind();

        }
        protected void insertpublisher()
        {
            cmd = new SqlCommand("sp_InsertPublisher", dbcon.GetCon());
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", txtpublisherID.Text);
            cmd.Parameters.AddWithValue("@name", txtpublisherName.Text);
            dbcon.OpenCon();
            if (cmd.ExecuteNonQuery() == 1)
            {
                dbcon.CloseCon();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Success','Saved successfully','success')", true);
                clrcontrol();
                Bindrecord();
                Autogenerate();

            }
            else
            {
                dbcon.CloseCon();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Error','record failed','error')", true);
            }
        }

        private void clrcontrol()
        {
            txtpublisherName.Text = txtpublisherID.Text = String.Empty;
            txtpublisherName.Focus();
        }

        protected void SearchRecordBy_ID(string idd)
        {
            cmd = new SqlCommand("sp_getPublisherByID", dbcon.GetCon());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@ID", idd);
            dbcon.OpenCon();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            DataSet ds = new DataSet();
            da.Fill(ds, "dt");
            dbcon.CloseCon();
            if (ds.Tables[0].Rows.Count > 0)
            {
               
                txtpublisherID.Text = ds.Tables[0].Rows[0]["publisher_id"].ToString();
                txtpublisherName.Text = ds.Tables[0].Rows[0]["publisher_name"].ToString();
                btnAdd.Visible = false;
                btnupdate.Visible = true;
               // btnCancel.Visible = true;
            }
            else
            {

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Error! No record found','error')", true);
            }
        }

        protected void RptPublisher_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { '&' });
                string id = commandArgs[0];
                SearchRecordBy_ID(id);
            }
           
                 else if (e.CommandName == "delete")
            {
                string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { '&' });
                string id = commandArgs[0];
                cmd = new SqlCommand("sp_DeletePublisherByID", dbcon.GetCon());
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@id", id);
                dbcon.OpenCon();
                if (cmd.ExecuteNonQuery() == 1)
                {
                    dbcon.CloseCon();
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Success','Deleted successfully','success')", true);
                    clrcontrol();
                    Bindrecord();
                    Autogenerate();
                    btnAdd.Visible = true;
                    btnupdate.Visible = false;
                    btnCancel.Visible = false;

                }
                else
                {
                    dbcon.CloseCon();
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Error','Deletation failed','error')", true);
                }
            }
        }
        }
}