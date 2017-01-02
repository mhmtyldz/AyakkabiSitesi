using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Urunler : System.Web.UI.Page
{
    Methodlar klas = new Methodlar();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dtUrunler = klas.GetDataTable("SELECT  dbo.Urun.*, dbo.Kategori.KategoriAd"+
                         " FROM  dbo.Urun INNER JOIN"+
                         " dbo.Kategori ON dbo.Urun.KategoriId = dbo.Kategori.KategoriId");
        rpUrunler.DataSource = dtUrunler;
        rpUrunler.DataBind();
    }
}