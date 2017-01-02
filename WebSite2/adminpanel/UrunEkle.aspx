<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel/admin.master" AutoEventWireup="true" CodeFile="UrunEkle.aspx.cs" Inherits="adminpanel_UrunEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 669px;
        }
        .auto-style2 {
            width: 282px;
        }
        .auto-style3 {
            width: 706px;
        }
        .auto-style4 {
            width: 25%;
            height: 25px;
        }
        .auto-style5 {
            width: 706px;
            height: 50px;
        }
        .auto-style6 {
            width: 25%;
            height: 50px;
        }
        .auto-style8 {
            width: 706px;
            height: 51px;
        }
        .auto-style9 {
            width: 25%;
            height: 51px;
        }
        .auto-style10 {
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
        .auto-style11 {
            width: 25%;
            height: 48px;
        }
        .auto-style12 {
            width: 706px;
            height: 48px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblBilgi" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="text-align: right; font-family: 'Trebuchet MS'; font-size: 15px; font-weight: bold; color: #fff;">Kategori Adı:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="ddlKategori" CssClass="form-control" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; width: 25%; font-family: 'Trebuchet MS'; font-size: 15px; font-weight: bold; color: #fff;">Ürün Adı:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtUrunAd" CssClass="form-control" placeholder="Ürün Adı" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="text-align: right; font-family: 'Trebuchet MS'; font-size: 15px; font-weight: bold; color: #fff;">Ürün Özellik:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtUrunOzellik" CssClass="auto-style10" placeholder="Ürün Özellik" runat="server" Height="134px" TextMode="MultiLine" Width="503px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" style="text-align: right; font-family: 'Trebuchet MS'; font-size: 15px; font-weight: bold; color: #fff;">Ürün Resim:</td>
                <td class="auto-style12">
                    <asp:FileUpload ID="fuUrunResim" CssClass="form-control" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="text-align: right; width: 25%; font-family: 'Trebuchet MS'; font-size: 15px; font-weight: bold; color: #fff;"></td>
                <td class="auto-style3">
                    <asp:Button ID="btnKaydet" CssClass="btn btn-success" runat="server" Text="Kaydet" OnClick="btnKaydet_Click" />
                </td>
            </tr>
        </table>
    </form>
</asp:Content>

