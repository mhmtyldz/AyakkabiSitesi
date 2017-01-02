<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="adminpanel_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="http://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>
    <link href='http://fonts.googleapis.com/css?family=Raleway:300,200' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

    <link rel="stylesheet" href="css/style.css">
    <title>Admin Giriş </title>
</head>
<body>
    <form runat="server">
        <div class="menu">
            <ul class="mainmenu clearfix">
                <li class="menuitem">Well</li>
                <li class="menuitem">how</li>
                <li class="menuitem">about</li>
                <li class="menuitem">that?</li>
            </ul>
        </div>
        <button id="findpass">Ayyakabı Dünyası</button>
        <div class="form">
            <div class="forceColor"></div>
            <div class="topbar">

                <div class="spanColor"></div>
                <asp:TextBox ID="txtKullaniciAdi" CssClass="input" placeholder="Kullanıcı Adı" runat="server"></asp:TextBox>

                <asp:TextBox ID="txtKullaniciSifre" CssClass="input" placeholder="Şifre" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <asp:Button ID="btnGiris" CssClass="submit" runat="server" Text="Giriş" OnClick="btnGiris_Click" />

        </div>

        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src="js/index.js"></script>

    </form>
</body>
</html>

