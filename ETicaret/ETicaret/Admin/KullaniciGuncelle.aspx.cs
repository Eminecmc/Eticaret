using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaret.Admin
{
    public partial class KullaniciGuncelle : System.Web.UI.Page
    {
        eticaretvtEntities db = new eticaretvtEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["deger"]);
            if (Page.IsPostBack == false)
            {
                var ktgr = db.KULLANICILAR1.Find(id);
                useradi.Text = ktgr.UserAdi;
                usersoyadi.Text = ktgr.UserSoyadi;
                usermail.Text = ktgr.UserMail;
                userrol.Text = ktgr.Rol;

            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["deger"]);
            var ktgr = db.KULLANICILAR1.Find(id);
            ktgr.Rol = userrol.Text;
          //  db.KULLANICILAR1.Add(ktgr);
            db.SaveChanges();
            Response.Redirect("Kullanıcılar.aspx");
        }
    }
}