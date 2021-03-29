using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Entity.Validation;

public partial class _Default : System.Web.UI.Page
{
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["New"] != null)
            {

                Response.Redirect("Error.aspx");

            }
        }
    
 
    public static string EnkriptoPasswordBase64(string password)
    {
        byte[] bytes = System.Text.Encoding.Unicode.GetBytes(password);
        byte[] inArray = HashAlgorithm.Create("SHA1").ComputeHash(bytes);
        return Convert.ToBase64String(inArray);
    }
    protected void Regjistrohu_Click(object sender, EventArgs e)
    {
        Guid newGuid = Guid.NewGuid();

        if (Page.IsValid)
        {
            using (ProjektDBEntities4 entitete = new ProjektDBEntities4())
            {
                var email = TextBoxEmail.Text;
                var userEkzistent = (from p in entitete.Perdoruesits
                                     where p.Email == email
                                     select p).Count();
                if (userEkzistent > 0)
                {
                    Response.Write("<script>alert('Ky perdorues ekziston !');window.location = 'Regjistrohu.aspx';</script>");
                }
                else
                {

                    Perdoruesit perdorues = new Perdoruesit();

                    perdorues.ID = newGuid.ToString();
                    perdorues.Username = TextBoxName.Text;
                    perdorues.Email = TextBoxEmail.Text;
                    perdorues.Password = EnkriptoPasswordBase64(TextBoxPsw.Text);
                    perdorues.Qyteti = DropDownListQyteti.Text;
                    entitete.Perdoruesits.Add(perdorues);
                    entitete.SaveChanges();

                    Session["New"] = perdorues.ID;
                    Session["Username"] = perdorues.Username;
                    Session["Email"] = perdorues.Email;
                    Session["Roli"] = perdorues.Roli;
                    Response.Write("<script>alert('Regjistrimi u krye me sukses !');window.location = 'Kryefaqja.aspx';</script>");
                }

            }

        }
    }
}