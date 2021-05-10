using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaret.Admin
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        eticaretvtEntities dba = new eticaretvtEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Rkategori.DataSource = dba.Kategori.ToList();
            Rkategori.DataBind();

            if (Request.QueryString["id"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                var ktgr = dba.Kategori.Find(id);
                dba.Kategori.Remove(ktgr);
                dba.SaveChanges();
                Response.Redirect("Kategoriler.aspx");

            }
        }

        protected void KEkle_Click(object sender, EventArgs e)
        {
            Kategori k = new Kategori();
            k.KategoriAdi = kategoriadi.Text;
            dba.Kategori.Add(k);
            dba.SaveChanges();

            Rkategori.DataSource = dba.Kategori.ToList();
            Rkategori.DataBind();

            kategoriadi.Text = "";



        }
    }
}