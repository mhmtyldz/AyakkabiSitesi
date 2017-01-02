using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing;

public partial class adminpanel_UrunEkle : System.Web.UI.Page
{
    Methodlar klas = new Methodlar(); string uzanti = ""; string resimadi = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        KategoriGetir();

    }

    void KategoriGetir()
    {
        DataTable dtKategori = klas.GetDataTable("Select *  From Kategori");
        ddlKategori.DataTextField = "KategoriAd";
        ddlKategori.DataValueField = "KategoriId";
        ddlKategori.DataSource = dtKategori;
        ddlKategori.DataBind();
    }

    protected void btnKaydet_Click(object sender, EventArgs e)
    {
        if (fuUrunResim.HasFile)
        {
            uzanti = Path.GetExtension(fuUrunResim.PostedFile.FileName);
            string baslik = fuUrunResim.FileName;
            resimadi = Seo.Temizle(baslik) + "_Urun_" + uzanti;
            fuUrunResim.SaveAs(Server.MapPath("../UrunResimleri/Silinecek" + uzanti));

            int deger = 200;
            Bitmap resim = new Bitmap(Server.MapPath("../UrunResimleri/Silinecek" + uzanti));// Silinecek resmimizin boyutunu bitmap yapıyoruz 
            using (Bitmap yeniResim = resim)
            {
                double Yukseklik = yeniResim.Height;
                double Genislik = yeniResim.Width;
                double Oran = 0;

                if (Genislik >= deger)
                {
                    Oran = Genislik / Yukseklik;
                    Genislik = deger;
                    Yukseklik = deger / Oran;

                    Size yenidegerler = new Size(Convert.ToInt32(Genislik), Convert.ToInt32(Yukseklik));
                    Bitmap SonResim = new Bitmap(yeniResim, yenidegerler);
                    SonResim.Save(Server.MapPath("../UrunResimleri/200/" + resimadi));
                    SonResim.Dispose();
                    yeniResim.Dispose();
                    resim.Dispose();

                }
                else
                {
                    fuUrunResim.SaveAs(Server.MapPath("../UrunResimleri/200/" + uzanti));
                }



            }
            FileInfo fisilinecek = new FileInfo(Server.MapPath("../UrunResimleri/Silinecek" + uzanti));
            fisilinecek.Delete();

            SqlConnection baglanti = klas.baglan();
            SqlCommand cmd = new SqlCommand("insert into Urun (KategoriId,UrunAd,UrunResim,UrunOzellik) values(@KategoriId,@UrunAd,@UrunResim,@UrunOzellik)", baglanti);
            cmd.Parameters.Add("KategoriId", ddlKategori.SelectedValue);
            cmd.Parameters.Add("UrunAd", txtUrunAd.Text);
            cmd.Parameters.Add("UrunResim", resimadi);
            cmd.Parameters.Add("UrunOzellik", txtUrunOzellik.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("UrunEkle.aspx");
        }

        else
        {
            SqlConnection baglanti = klas.baglan();
            SqlCommand cmd = new SqlCommand("insert into Urun (KategoriId,UrunAd,UrunResim,UrunOzellik) values(@KategoriId,@UrunAd,@UrunResim,@UrunOzellik)", baglanti);
            cmd.Parameters.Add("KategoriId", ddlKategori.SelectedValue);
            cmd.Parameters.Add("UrunAd", txtUrunAd.Text);
            cmd.Parameters.Add("UrunResim", "ResimYok.png");
            cmd.Parameters.Add("UrunOzellik", txtUrunOzellik.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("UrunEkle.aspx");
        }
    }
}