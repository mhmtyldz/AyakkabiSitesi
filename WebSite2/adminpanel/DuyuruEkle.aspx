<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel/admin.master" AutoEventWireup="true" CodeFile="DuyuruEkle.aspx.cs" Inherits="adminpanel_DuyuruEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            width: 79%;
            height: 24px;
        }
        .auto-style2 {
            height: 24px;
            width: 7%;
        }
        .auto-style3 {
            width: 25%;
            height: 26px;
        }
        .auto-style5 {
            width: 25%;
            height: 29px;
        }
        .auto-style6 {
            height: 48px;
        }
        .auto-style7 {
            width: 7%;
            height: 48px;
        }
        .auto-style8 {
            width: 7%;
            height: 26px;
        }
        .auto-style9 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblBilgi" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right; font-family: 'Trebuchet MS'; font-size: 15px; font-weight: bold; color: #fff;">Duyuru&nbsp; Başlık:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtDuyuruBaslik" CssClass="form-control" placeholder="Kategori Adı" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" style="text-align: right; font-family: 'Trebuchet MS'; font-size: 15px; font-weight: bold; color: #fff;">Duyuru İçerik :</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtDuyuruIcerik" CssClass="auto-style9" placeholder="Kategori Adı" runat="server" Height="100px"  Width="476px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8" style="text-align: right; font-family: 'Trebuchet MS'; font-size: 15px; font-weight: bold; color: #fff;"></td>
            <td class="auto-style5">
                <asp:Button ID="btnDuyuruKaydet" CssClass="btn btn-success" runat="server" Text="Kaydet" OnClick="btnDuyuruKaydet_Click" />
            </td>
        </tr>
    </table>
</form>
</asp:Content>

