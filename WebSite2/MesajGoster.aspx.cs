using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MesajGoster : System.Web.UI.Page
{
    Methodlar klas = new Methodlar();
    string islem = "";
    string iletisimId = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        islem = Request.QueryString["islem"];
        iletisimId = Request.QueryString["iletisimId"];



        DataTable dtMesajlar = klas.GetDataTable("Select * From iletisim");
        dlMesajlar.DataSource = dtMesajlar;
        dlMesajlar.DataBind();

        if(islem=="sil")
        {
            klas.cmd("DELETE FROM iletisim Where iletisimId="+iletisimId);
           
        }
      


    }
}