using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ETicaret.Admin
{
    public partial class urunGuncelle : System.Web.UI.Page
    {
        eticaretvtEntities db = new eticaretvtEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["deger"]);
            if (Page.IsPostBack == false)
            {
                var ktgr = db.UrunListesi.Find(id);
                urunAdi.Text = ktgr.UrunAdi;
                fiyat.Text = ktgr.UrunFiyat.ToString();
                DropDownList1.Text = ktgr.kategori;
                ozellik1.Text = ktgr.UrunOzellik;
                ozellik2.Text = ktgr.UrunOzellik2;
               
            }
            }

        protected void urunguncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["deger"]);
            var ktgr = db.UrunListesi.Find(id);
            ktgr.UrunAdi = urunAdi.Text;
            ktgr.UrunFiyat=Convert.ToInt32(fiyat.Text);
            ktgr.kategori=DropDownList1.Text;
            ktgr.UrunOzellik = ozellik1.Text;
            ktgr.UrunOzellik2 = ozellik2.Text;
            if (Request.Files.Count > 0)
            {
                string dosyaadi1 = Path.GetFileName(Request.Files[0].FileName);
                string yol1 = "/tasarim/img/" + dosyaadi1;
                Request.Files[0].SaveAs(Server.MapPath(yol1));
                ktgr.UrunFoto = "/tasarim/img/" + dosyaadi1;

                string dosyaadi2 = Path.GetFileName(Request.Files[1].FileName);
                string yol2 = "/tasarim/img/" + dosyaadi2;
                Request.Files[1].SaveAs(Server.MapPath(yol2));
                ktgr.UrunFoto1 = "/tasarim/img/" + dosyaadi2;

                string dosyaadi3 = Path.GetFileName(Request.Files[2].FileName);
                string yol3 = "/tasarim/img/" + dosyaadi3;
                Request.Files[2].SaveAs(Server.MapPath(yol3));
                ktgr.UrunFoto2 = "/tasarim/img/" + dosyaadi3;

                string dosyaadi4 = Path.GetFileName(Request.Files[3].FileName);
                string yol4 = "/tasarim/img/" + dosyaadi4;
                Request.Files[3].SaveAs(Server.MapPath(yol4));
                ktgr.UrunFoto3 = "/tasarim/img/" + dosyaadi4;
            }

         //   db.UrunListesi.Add(ktgr);
            db.SaveChanges();
            Response.Redirect("urun.aspx");
        }
    }
    }
