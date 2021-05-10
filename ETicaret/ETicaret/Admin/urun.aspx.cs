using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaret.Admin
{
    public partial class urun : System.Web.UI.Page
    {
        eticaretvtEntities db = new eticaretvtEntities();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void kaydet_Click(object sender, EventArgs e)
        {
            UrunListesi k = new UrunListesi();
            k.UrunAdi = urunAdi.Text;
            k.UrunFiyat = int.Parse(fiyat.Text);
            k.kategori = DropDownList1.Text;
            k.UrunOzellik = ozellik2.Text;
            k.UrunOzellik2 = ozellik1.Text;

            if (Request.Files.Count > 0)
            {
                string dosyaadi1 = Path.GetFileName(Request.Files[0].FileName);
                string yol1 = "/tasarim/img/" + dosyaadi1;
                Request.Files[0].SaveAs(Server.MapPath(yol1));
                k.UrunFoto = "/tasarim/img/" + dosyaadi1;

                string dosyaadi2 = Path.GetFileName(Request.Files[1].FileName);
                string yol2 = "/tasarim/img/" + dosyaadi2;
                Request.Files[1].SaveAs(Server.MapPath(yol2));
                k.UrunFoto1 = "/tasarim/img/" + dosyaadi2;

                string dosyaadi3 = Path.GetFileName(Request.Files[2].FileName);
                string yol3 = "/tasarim/img/" + dosyaadi3;
                Request.Files[2].SaveAs(Server.MapPath(yol3));
                k.UrunFoto2 = "/tasarim/img/" + dosyaadi3;

                string dosyaadi4 = Path.GetFileName(Request.Files[3].FileName);
                string yol4 = "/tasarim/img/" + dosyaadi4;
                Request.Files[3].SaveAs(Server.MapPath(yol4));
                k.UrunFoto3 = "/tasarim/img/" + dosyaadi4;
            }

            db.UrunListesi.Add(k);
            db.SaveChanges();
            Response.Redirect("urun.aspx");
        }
    }
}