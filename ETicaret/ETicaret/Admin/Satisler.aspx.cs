using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaret.Admin
{
    public partial class Satisler : System.Web.UI.Page
    {
        eticaretEntities db = new eticaretEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            listeleme.DataSource = db.Sepet1.Where(p => p.Status == 2).ToList();
            listeleme.DataBind();

            if (Request.QueryString["id"] != null)
            {
                int x = Convert.ToInt32(Request.QueryString["id"]);
                var ktgr = db.Sepet1.Find(x);
                db.Sepet1.Remove(ktgr);
                db.SaveChanges();
                Response.Redirect("sepet.aspx");

            }

        }
    }
}