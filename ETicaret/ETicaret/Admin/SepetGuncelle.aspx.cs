using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaret.Admin
{
    public partial class SepetGuncelle : System.Web.UI.Page
    {
        eticaretEntities db = new eticaretEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["deger"]);
            if (Page.IsPostBack == false)
            {
                var ktgr = db.Sepet1.Find(id);
                SepetAdi.Text = ktgr.SepetAdi;
                fiyat.Text = ktgr.SepetFiyat.ToString();
                kullaniciId.Text = ktgr.KullaniciID.ToString();
                status.Text = ktgr.Status.ToString();

            }
        }

        protected void sepetguncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["deger"]);
            var ktgr = db.Sepet1.Find(id);
            ktgr.Status = Convert.ToInt16(status.Text);
          //  ktgr.KullaniciID = Convert.ToInt32(kullaniciId.Text);
            db.SaveChanges();
            Response.Redirect("sepet.aspx");
        }
    }
}