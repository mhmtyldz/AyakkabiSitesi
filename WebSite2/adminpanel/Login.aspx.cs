using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminpanel_Login : System.Web.UI.Page
{
    Methodlar klas = new Methodlar();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGiris_Click(object sender, EventArgs e)
    {
        DataRow drGiris = klas.GetDataRow("select * from Admin where AdminKullaniciAdi='" + Seo.Temizle(txtKullaniciAdi.Text) + "' and AdminKullaniciSifre='" + Seo.Temizle(txtKullaniciSifre.Text) + "'");
        if (drGiris != null)
        {
            Session["AdminId"] = drGiris["AdminId"].ToString();
            Response.Redirect("Default.aspx");

        }
        else
        {
            txtKullaniciAdi.Text = "Yanlis";
        }

    }
}