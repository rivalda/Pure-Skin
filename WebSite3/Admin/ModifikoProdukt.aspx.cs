using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ModifikoProdukt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["Roli"].ToString() != "1")
        {
            Response.Redirect("/Admin/Error.aspx");
        }
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        if (!String.IsNullOrEmpty(Request.QueryString["id"]))
        {
            var id = Convert.ToInt32(Server.HtmlEncode(Request.QueryString["id"]));
            using (ProjektDBEntities4 entitetet = new ProjektDBEntities4())
            {
                var detajeProd = (from p in entitetet.Produktes
                                  where p.ID == id     
                                  select p).Single();  

                Emri.Text = detajeProd.Emri;        
                Pershkrimi.Text = detajeProd.Pershkrimi;      
                Kategori.SelectedIndex = Convert.ToInt32(detajeProd.KategoriID) - 1;  
                HiddenField1.Value = id.ToString();     
            }
        }
        else
        {
            Response.Write("Nuk ka informacion per kete faqe!");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            var id = Convert.ToInt32(HiddenField1.Value);  

            if (FileUpload1.HasFile)   
            {
                using (ProjektDBEntities4 entitetet = new ProjektDBEntities4())
                {
                    var produkt = (from p in entitetet.Produktes
                                   where p.ID == id
                                   select p).Single();

                    produkt.Emri = Emri.Text;
                    produkt.Pershkrimi = Pershkrimi.Text;
                    produkt.KategoriID = Convert.ToInt32(Kategori.SelectedValue);
                    produkt.Imazh = FileUpload1.FileName;
                    entitetet.SaveChanges();

                    FileUpload1.SaveAs(Request.PhysicalApplicationPath + "/img/" +
                        FileUpload1.FileName.ToString());
                    Response.Redirect("ProduktetAdmin.aspx"); 
                }
            }
        }
    }
}