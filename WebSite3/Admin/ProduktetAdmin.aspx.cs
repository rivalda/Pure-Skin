using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Produktet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["Roli"].ToString() != "1")
        {
            Response.Redirect("/Admin/Error.aspx");
        }
    }

    public IQueryable AfishoProdukte()
    {
        
        {
            var dbcontext = new ProjektDBEntities4();

            var produktet = from p in dbcontext.Produktes 
                            select p;
            return produktet;

        }
    }

    public void FshiProdukt(int id)
    {
        using (ProjektDBEntities4 dbcontext = new ProjektDBEntities4())
        {
            var produkt = (from p in dbcontext.Produktes
                           where p.ID == id
                           select p).Single();

            dbcontext.Produktes.Remove(produkt);
            dbcontext.SaveChanges();
        }
    }


}