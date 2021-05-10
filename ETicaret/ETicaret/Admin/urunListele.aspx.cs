using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaret.Admin
{
    public partial class urunListele : System.Web.UI.Page
    {
        eticaretvtEntities db = new eticaretvtEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            listeleme.DataSource = db.UrunListesi.ToList();
            listeleme.DataBind();

            if (Request.QueryString["id"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                var ktgr = db.UrunListesi.Find(id);
                db.UrunListesi.Remove(ktgr);
                db.SaveChanges();
                Response.Redirect("urunListele.aspx");

            }

        }
    }
}