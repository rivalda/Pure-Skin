using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ShtoKategori : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["Roli"].ToString() != "1")
        {
            Response.Redirect("/Admin/Error.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            using (ProjektDBEntities4 entitetet = new ProjektDBEntities4())
            {
                Kategori kategori = new Kategori();
                kategori.EmriKategorise = Emri.Text;
                kategori.Pershkrimi = Pershkrimi.Text;
                entitetet.Kategoris.Add(kategori);
                entitetet.SaveChanges();
                Label2.Text="Shtimi u krye me sukses!";
            }
        }
    }
}