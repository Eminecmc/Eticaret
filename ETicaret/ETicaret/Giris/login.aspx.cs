using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ETicaret.Giris
{
    public partial class login : System.Web.UI.Page
    {
        eticaretEntities db = new eticaretEntities();
        SqlConnection baglanti;
        protected void Page_Load(object sender, EventArgs e)
        {
            Init_Data();
            Save_Data();
        }
        protected void submit_Click(object sender, EventArgs e)
        {

            baglanti = new SqlConnection("Data Source=DESKTOP-LV09CUS;Initial Catalog=eticaretvt;Integrated Security=True");
            baglanti.Open();
            string sifreli = sifrele.MD5Olustur(sifre.Text);
            SqlCommand komut = new SqlCommand("SELECT * FROM KULLANICILAR1 WHERE UserMail=@P1 AND UserSifre=@P2", baglanti);
            komut.Parameters.AddWithValue("@P1", email.Text);
            komut.Parameters.AddWithValue("@P2",sifreli);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
               
                Session.Add("kullanici", dr["UserID"]);
                mesaj.Text = Session["kullanici"].ToString();
                Session.Timeout = 1;
                Response.Redirect("/site/index.aspx");
               
            }
            else
            {
                mesaj.Text="kullanıcı adı veya sifresi hatalı";
            }
            baglanti.Close();

        }

        protected void adminGiris_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminGiris.aspx");

        }

        private void Init_Data()
        {
            if (db.BeniHatirla.Count() == 1)
            {
                bool deger = db.BeniHatirla.Any();
                if (deger == true)
                {
                    var hatirla = db.BeniHatirla;
                    var kayit =hatirla.First();
                    email.Text = kayit.Mail;
                    hatirlama.Checked = true;

                }

            }
        }
        private void Save_Data()
        {
            baglanti = new SqlConnection("Data Source=DESKTOP-LV09CUS;Initial Catalog=eticaretvt;Integrated Security=True");
            baglanti.Open();

            if (hatirlama.Checked)
            {
               
                string sifreli = sifrele.MD5Olustur(sifre.Text);
                SqlCommand komut = new SqlCommand("Insert INTO BeniHatirla(Mail,Password) values(@P1,@P2)", baglanti);
                komut.Parameters.AddWithValue("@P1", email.Text);
                komut.Parameters.AddWithValue("@P2", sifreli);
                komut.ExecuteNonQuery();
                baglanti.Close();

            }
            else
            {
                SqlCommand komut = new SqlCommand("Delete From BeniHatirla", baglanti);
                komut.ExecuteNonQuery();
                baglanti.Close();

            }
        }
    }
}