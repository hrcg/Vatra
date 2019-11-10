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
    public partial class Rregjistrim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string cs = WebConfigurationManager.ConnectionStrings["RecetaConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(cs);
                string query = "SELECT count(*)From Perdorues Where email = @email";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@email", txtEM.Text);
                con.Open();
                int nr = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();
                if (nr > 0)
                {
                    gabim.Text = "Ky perdorues eshte regjistruar";
                }
                else
                {
                    string query2 = "INSERT INTO Perdorues (username, email, password, datelindja) VALUES (@username, @email, @password, @datelindja)";
                    string EncryptedPass = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPW.Text, "SHA1");
                    SqlCommand cmd2 = new SqlCommand(query2, con);
                    cmd2.Parameters.AddWithValue("@username", txtUN.Text);
                    cmd2.Parameters.AddWithValue("@email", txtEM.Text);
                    cmd2.Parameters.AddWithValue("@password", EncryptedPass);
                    cmd2.Parameters.AddWithValue("@datelindja", SqlDbType.Date).Value = txtDL.Text;
                    con.Open();
                    cmd2.ExecuteNonQuery();
                    con.Close();
                }
            }
        }

        protected void txtUN_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtEM_TextChanged(object sender, EventArgs e)
        {

        }
    }
}