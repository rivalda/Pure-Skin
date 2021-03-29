using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            Label1.Text += Session["Username"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void B_Logout_Click(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Session["New"] = null;
        Response.Redirect("Login.aspx");
    }

}