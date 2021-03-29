using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ShtoProdukt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["Roli"].ToString() != "1")
        {
            Response.Redirect("/Admin/Error.aspx");
        }
    }
}