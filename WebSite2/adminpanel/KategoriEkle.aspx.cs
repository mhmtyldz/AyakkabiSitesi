using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminpanel_KategoriEkle : System.Web.UI.Page
{
    Methodlar klas = new Methodlar();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dtKategori = klas.GetDataTable("Select * From Kategori");
        dlKategori.DataSource = dtKategori;
        dlKategori.DataBind();

    }

    protected void btnKaydet_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = klas.baglan();
        SqlCommand cmd = new SqlCommand("Insert into Kategori(KategoriAd) Values(@KategoriAd)", baglanti);
        cmd.Parameters.Add("KategoriAd", txtKategoriAd.Text);
        cmd.ExecuteNonQuery();
        Response.Redirect("KategoriEkle.aspx");
    }
}