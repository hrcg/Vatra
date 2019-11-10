using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;

namespace Recipes.Home.Pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            if (AuthenticateUser(txtUN.Text, txtPW.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(txtUN.Text, remember.Checked);
            }
            else
            {
                lbl.Text = ("Te dhenat qe keni vendosur nuk jane te sakta");
            }
        }

        private bool AuthenticateUser(string username, string password)
        {
            string cs = WebConfigurationManager.ConnectionStrings["RecetaConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("sqlprAuthenticateUser", con);
                cmd.CommandType = CommandType.StoredProcedure;
                string encryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "SHA1");
                SqlParameter parUsername = new SqlParameter("@username", username);
                SqlParameter parPassword = new SqlParameter("@password", encryptedPassword);

                cmd.Parameters.Add(parUsername);
                cmd.Parameters.Add(parPassword);
                con.Open();
                int returncode = (int)cmd.ExecuteScalar();
                return returncode == 1;
            }
        }

        protected void register_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home/Pages/Rregjistrim.aspx");
        }


    }
}