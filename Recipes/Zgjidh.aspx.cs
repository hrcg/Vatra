using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace sisteme_interneti_project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet ds = new DataSet();
                ds.ReadXml(Server.MapPath("data.xml"));
                ddldega.DataTextField = "dega";
                ddldega.DataValueField = "id";
                ddldega.DataSource = ds;
                ddldega.DataBind();
                ddldega.Items.Insert(0, new ListItem("select", "-1"));
                ddlparaleli.Items.Insert(0, new ListItem("select", "-1"));
                ddlviti.Items.Insert(0, new ListItem("select", "-1"));

                RemoveDuplicateItems(ddldega);
            }
        }


        protected void degandryshim(object sender, EventArgs e)
        {
            int vlera = Convert.ToInt32(ddldega.SelectedValue);
            if (vlera != -1)
            {

                DataSet ds1 = new DataSet();

                ds1.ReadXml(Server.MapPath("data.xml"));
                ds1.Tables[0].DefaultView.Sort = "viti";
                ddlviti.DataTextField = "viti";
                ddlviti.DataValueField = "id";
                ddlviti.DataSource = ds1;
                ddlviti.DataBind();
                ddlviti.Items.Insert(0, new ListItem("select", "-1"));


                RemoveDuplicateItems(ddlviti);

            }

        }
        

        protected void vitindryshim(object sender, EventArgs e)
        {
            int vlera = Convert.ToInt32(ddldega.SelectedValue);
            if (vlera != -1)
            {



                DataSet ds2 = new DataSet();
                ds2.ReadXml(Server.MapPath("data.xml"));
                ddlparaleli.DataTextField = "paraleli";
                ddlparaleli.DataValueField = "id";
                ddlparaleli.DataSource = ds2;
                ddlparaleli.DataBind();
                ddlparaleli.Items.Insert(0, new ListItem("select", "-1"));


                RemoveDuplicateItems(ddlparaleli);

            }
        }


     
        public void RemoveDuplicateItems(DropDownList ddl)
        {
            for (int i = 0; i < ddl.Items.Count; i++)
            {
                ddl.SelectedIndex = i;
                string str = ddl.SelectedItem.ToString();
                for (int counter = i + 1; counter < ddl.Items.Count; counter++)
                {
                    ddl.SelectedIndex = counter;
                    string compareStr = ddl.SelectedItem.ToString();
                    if (str == compareStr)
                    {
                        ddl.Items.RemoveAt(counter);
                        counter = counter - 1;
                    }
                }
            }
        }

        protected void btnafisho_Click(object sender, EventArgs e)
        {

        }
    }
}