using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaret.Admin
{
    public partial class sepet : System.Web.UI.Page
    {
        eticaretvtEntities db = new eticaretvtEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            listeleme.DataSource = db.Sepet1.Where(p => p.Status == 1).ToList();
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