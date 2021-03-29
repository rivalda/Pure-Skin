using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AfishoListView : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            var enitete = new ProjektDBEntities4(); 
            var kategorite = enitete.Kategoris.ToList();
            DropDownList1.DataSource = kategorite;
            DropDownList1.DataTextField = "EmriKategorise";
            DropDownList1.DataValueField = "ID";
            ListItem item = new ListItem(); 
            DropDownList1.DataBind();
            item.Text = "---";
            item.Value = "";
            DropDownList1.Items.Insert(0, item); 

            ListView1.DataSource = enitete.Produktes.ToList(); 
            ListView1.DataBind(); 
        }

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (!String.IsNullOrEmpty(DropDownList1.SelectedValue))
        {
            int idCategori = Convert.ToInt32(DropDownList1.SelectedValue); 

            using (ProjektDBEntities4 dbcontext = new ProjektDBEntities4())
            {
                List<Produkte> produkts = dbcontext.Produktes.Where(i => i.KategoriID == idCategori).ToList();

                ListView1.DataSource = produkts; 
                ListView1.DataBind();
            }

        }

        else
        {
            using (ProjektDBEntities4 dbcontext = new ProjektDBEntities4())
            {
                List<Produkte> produkts = dbcontext.Produktes.ToList(); 
                ListView1.DataSource = produkts;
                ListView1.DataBind();
            }

        }
    }
}