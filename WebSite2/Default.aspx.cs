using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    Methodlar klas = new Methodlar();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dtKategori = klas.GetDataTable("Select * From Kategori");
        rpKategori.DataSource = dtKategori;
        rpKategori.DataBind();

        DataTable dtDuyuru = klas.GetDataTable("Select * From Duyuru");
        rpDuyuru.DataSource = dtDuyuru;
        rpDuyuru.DataBind();



    }
}