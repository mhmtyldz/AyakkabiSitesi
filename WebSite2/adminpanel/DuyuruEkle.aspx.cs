using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminpanel_DuyuruEkle : System.Web.UI.Page
{
    Methodlar klas = new Methodlar();
    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void btnDuyuruKaydet_Click(object sender, EventArgs e)
    {

        SqlConnection baglanti = klas.baglan();
        SqlCommand cmd = new SqlCommand("Insert into Duyuru(DuyuruBaslik,DuyuruIcerik) Values(@DuyuruBaslik,@DuyuruIcerik)", baglanti);

        cmd.Parameters.Add("DuyuruBaslik", txtDuyuruBaslik.Text);
        cmd.Parameters.Add("DuyuruIcerik", txtDuyuruIcerik.Text);
        cmd.ExecuteNonQuery();
        Response.Redirect("DuyuruEkle.aspx");
    }
}