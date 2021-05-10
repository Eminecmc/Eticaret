using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaret.Admin
{
    public partial class KategoriGuncelle : System.Web.UI.Page
    {
        eticaretvtEntities db = new eticaretvtEntities();
       

        protected void Page_Load(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(Request.QueryString["deger"]);
            if (Page.IsPostBack == false)
            {
                var ktgr = db.Kategori.Find(id);
                kategoriadi.Text = ktgr.KategoriAdi;
            }
            Rkategori.DataSource = db.Kategori.ToList();
            Rkategori.DataBind();
        }

        protected void Guncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["deger"]);
            var ktgr = db.Kategori.Find(id);
            ktgr.KategoriAdi = kategoriadi.Text;
            db.SaveChanges();
            Response.Redirect("Kategoriler.aspx");


        }
    }
}