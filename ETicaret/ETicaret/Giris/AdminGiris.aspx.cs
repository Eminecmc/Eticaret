using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaret.Giris
{
    public partial class AdminGiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void adminGiris_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti;
            baglanti = new SqlConnection("Data Source=DESKTOP-LV09CUS;Initial Catalog=eticaretvt;Integrated Security=True");
            baglanti.Open();

            string sifreli = sifrele.MD5Olustur(sifre.Text);
            SqlCommand komut = new SqlCommand("SELECT * FROM KULLANICILAR1 WHERE UserMail=@P1 AND UserSifre=@P2 AND Rol='Admin'", baglanti);
            komut.Parameters.AddWithValue("@P1", email.Text);
            komut.Parameters.AddWithValue("@P2", sifreli);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {

                Session.Add("admin", dr["UserID"]);
                mesaj.Text = Session["admin"].ToString();
                Session.Timeout = 1;
                Response.Redirect("/Admin/index.aspx");

            }
            else
            {
                mesaj.Text = "kullanıcı adı veya sifresi hatalı";
            }
            baglanti.Close();

        }
    }
    
}