using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaret.Admin
{
    public partial class urunDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string id = Request.QueryString["id"];
            SqlConnection baglanti;
            baglanti = new SqlConnection("Data Source=DESKTOP-LV09CUS;Initial Catalog=eticaretvt;Integrated Security=True");
            baglanti.Open();
            SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM UrunListesi  inner join Kategori on Kategori.KategoriID = UrunListesi.kategori WHERE UrunID=" + id, baglanti);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            detay.DataSource = dt;
            detay.DataBind();
            baglanti.Close();



            /* detay.DataSource = db.UrunListesi.Where(p => p.UrunID == id).ToString();
             detay.DataBind();*/

        }
    }
}