using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_DetajeProdukt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      


            if (Session["Roli"].ToString() != "1")
            {
                Response.Redirect("/Admin/Error.aspx");
            }
    

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

}