using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement
{
    public partial class Login : System.Web.UI.Page
    {
        DBConnect dbcon = new DBConnect();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //for member login
            SqlCommand cmd = new SqlCommand("sqlquery", dbcon.GetCon());
        }
    }
}