using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class iletisim : System.Web.UI.Page
{
    Methodlar klas = new Methodlar();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGonder_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = klas.baglan();
        SqlCommand cmd = new SqlCommand("INSERT INTO iletisim(AdSoyad,Mail,Tel,Mesaj) VALUES(@AdSoyad,@Mail,@Tel,@Mesaj)",baglanti);
        cmd.Parameters.Add("AdSoyad",txtAd.Text);
        cmd.Parameters.Add("Mail", txtMail.Text);
        cmd.Parameters.Add("Tel", txtTel.Text);
        cmd.Parameters.Add("Mesaj", txtMesaj.Text);
        cmd.ExecuteNonQuery();
        Response.Redirect("iletisim.aspx");
    }
}