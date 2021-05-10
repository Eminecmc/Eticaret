using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaret.Admin
{
    public partial class Kullanıcılar : System.Web.UI.Page
    {
        eticaretvtEntities db = new eticaretvtEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            listeleme.DataSource = db.KULLANICILAR1.ToList();
            listeleme.DataBind();

            if (Request.QueryString["id"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                var ktgr = db.KULLANICILAR1.Find(id);
                
                db.KULLANICILAR1.Remove(ktgr);
                db.SaveChanges();
                Response.Redirect("Kullanıcılar.aspx");

            }
        }
    }
}