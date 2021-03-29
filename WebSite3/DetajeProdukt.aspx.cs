using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DetajeProdukt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {

            if (!String.IsNullOrEmpty(Request.QueryString["id"]))
            {
                var id = Convert.ToInt32(Server.HtmlEncode(Request.QueryString["id"]));

                using (ProjektDBEntities4 entitetet = new ProjektDBEntities4())
                {
                    var detajeProd = (from p in entitetet.Produktes
                                      where p.ID == id
                                      select p).Single(); //Ne rastet kur jemi te sigurt qe do te kthej vetem nje rekord

                    Label1.Text = "<h1>" + detajeProd.Emri + "</h1><br>" +
                        "Pershkrimi: " + detajeProd.Pershkrimi + "<br><br>" + "<h3>Cmimi: " + detajeProd.Cmimi + "</h3><br>";
                    Image1.ImageUrl = "img/" + detajeProd.Imazh;
                    Image1.Width = 500;
                    Image1.Height = 500;
                }
            }
            else
            {
                Response.Write("Nuk ka informacion per kete faqe!");
            }

           
        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["New"] == null)
        {
            Response.Write("<script>alert('Duhet te logoheni per te kryer porosi !');window.location = 'Login.aspx';</script>");
        }
        else
        {
            using (ProjektDBEntities4 dbcontext = new ProjektDBEntities4())
            {
                Porosite porosia = new Porosite();
                porosia.ID_Perdorues = Session["New"].ToString();
                porosia.Email_Perdoruesi = Session["Email"].ToString();
                porosia.ID_Prod = Convert.ToInt32(Request.QueryString["ID"]);
                dbcontext.Porosites.Add(porosia);
                dbcontext.SaveChanges();

                Label2.Text = "Porosia u krye me sukses!";
            }
        }
    }
}
