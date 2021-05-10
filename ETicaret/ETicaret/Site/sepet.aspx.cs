using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaret.Site
{
    public partial class sepet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] != null)
            {
                string id = Request.QueryString["urunID"];
                SqlConnection baglanti;
                baglanti = new SqlConnection("Data Source=DESKTOP-LV09CUS;Initial Catalog=eticaretvt;Integrated Security=True");
                baglanti.Open();
                SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM UrunListesi WHERE UrunID=" + id, baglanti);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                sepetEkle.DataSource = dt;
                sepetEkle.DataBind();

                SqlCommand komut = new SqlCommand("INSERT INTO Sepet1(SepetFoto,SepetAdi,SepetFiyat,KullaniciID,Status) values(@foto,@adi,@fiyat,@user,@durum)", baglanti);
                komut.Parameters.AddWithValue("@foto", dt.Rows[0]["UrunFoto"].ToString());
                komut.Parameters.AddWithValue("@adi", dt.Rows[0]["UrunAdi"].ToString());
                komut.Parameters.AddWithValue("@fiyat", dt.Rows[0]["UrunFiyat"]);
                komut.Parameters.AddWithValue("@user", Session["kullanici"]);
                komut.Parameters.AddWithValue("@durum", 1);
                komut.ExecuteNonQuery();
                
            }
            else
            {
                Response.Redirect("/Giris/login.aspx");
            }


        }
    }
}