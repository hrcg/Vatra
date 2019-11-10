using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Recipes
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["RecetaConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                DataSet ds = new DataSet();
                ds.ReadXml(Server.MapPath("~/Data.xml"));

                DataTable dtContent = ds.Tables["Content"];
                con.Open();

                using (SqlBulkCopy bc = new SqlBulkCopy(con))
                {
                    bc.DestinationTableName = "Content";
                    bc.ColumnMappings.Add("dega", "Dega");
                    bc.ColumnMappings.Add("viti", "Viti");
                    bc.ColumnMappings.Add("paraleli", "Paraleli");
                    bc.ColumnMappings.Add("lenda", "Lenda");
                    bc.ColumnMappings.Add("tipi", "Tipi");
                    bc.ColumnMappings.Add("pedagog", "Pedagog");
                    bc.ColumnMappings.Add("dita", "Dita");
                    bc.ColumnMappings.Add("klasa", "Klasa");
                    bc.ColumnMappings.Add("ora", "Ora");
                    bc.WriteToServer(dtContent);
                }
            }
        }
    }
}