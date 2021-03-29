using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public static string EnkriptoPasswordBase64(string password)
    {
        byte[] bytes = System.Text.Encoding.Unicode.GetBytes(password);
        byte[] inArray = HashAlgorithm.Create("SHA1").ComputeHash(bytes);
        return Convert.ToBase64String(inArray);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (Page.IsValid)
        {
            using (ProjektDBEntities4 dbcontext = new ProjektDBEntities4())
            {

                var perdorues = (from p in dbcontext.Perdoruesits
                                 where p.Username == Username.Text
                                 select p).SingleOrDefault();

                if (perdorues != null)
                {

                    //verifikojm psw
                    if (EnkriptoPasswordBase64(Password.Text) == perdorues.Password)
                    {

                        Session["New"] = perdorues.ID;
                        Session["Username"] = perdorues.Username;
                        Session["Email"] = perdorues.Email;
                        Session["Roli"] = perdorues.Roli;

                        if (perdorues.Roli == 0)
                        {
                            Response.Redirect("Kryefaqja.aspx");
                        }
                        else
                        {
                            Response.Redirect("/Admin/KryefaqjaAdmin.aspx");
                        }
                    }

                    else
                    {
                        Label1.Text = "Password-i nuk eshte i sakte";
                    }
                }
                else

                {
                    Label1.Text = "Username nuk eshte i sakte";
                }


            }


        }
    }
}