using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaret.Admin
{
    public partial class index : System.Web.UI.Page
    {
        eticaretEntities db = new eticaretEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            kullaniciSayisi.Text = db.KULLANICILAR1.Count().ToString();
            Siparis.Text = db.Sepet1.Where(p => p.Status ==2 ).Count().ToString();
            toplamUrun.Text = db.UrunListesi.Count().ToString();
            Listele.DataSource = db.KULLANICILAR1.OrderByDescending(p => p.UserID).Take(6).ToList();
            Listele.DataBind();

            gun.Text = DateTime.Now.Day.ToString();
            ay.Text = DateTime.Now.Month.ToString();
            yil.Text = DateTime.Now.Year.ToString();
            saat.Text = DateTime.Now.Hour.ToString();
            dakika.Text = DateTime.Now.Minute.ToString();

        }
    }
}