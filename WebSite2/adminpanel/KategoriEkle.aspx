<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel/admin.master" AutoEventWireup="true" CodeFile="KategoriEkle.aspx.cs" Inherits="adminpanel_KategoriEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 35%;
        height: 49px;
    }
    .auto-style3 {
        height: 49px;
    }
    .auto-style4 {
        width: 35%;
        height: 50px;
    }
    .auto-style5 {
        height: 50px;
    }
        .auto-style6 {
            color: white;
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
            <td class="auto-style2" style="text-align: right; width: 25%; font-family: 'Trebuchet MS'; font-size: 15px; font-weight: bold; color: #fff;">Kategori Adı:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtKategoriAd" CssClass="form-control" placeholder="Kategori Adı" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="text-align: right; width: 25%; font-family: 'Trebuchet MS'; font-size: 15px; font-weight: bold; color: #fff;"></td>
            <td class="auto-style5">
                <asp:Button ID="btnKaydet" CssClass="btn btn-success" runat="server" Text="Kaydet" OnClick="btnKaydet_Click" />
            </td>
        </tr>
    </table>
</form>
    <asp:DataList ID="dlKategori" runat="server" CellPadding="4" ForeColor="#333333" Width="748px">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            <table class="nav-justified">
                <tr>
                    <td style="width: 50%">Kategori Ad</td>
                    <td style="width: 25%">Güncelle</td>
                    <td class="auto-style6" style="width: 25%">Sil</td>
                </tr>
            </table>
        </HeaderTemplate>
        <ItemStyle BackColor="#EFF3FB" />
        <ItemTemplate>
            <table class="nav-justified">
                <tr>
                    <td style="width: 50%"><%#Eval("KategoriAd") %></td>
                    <td style="width: 25%">
                        <img src="images/icon/kul_duzenle.png" />
                    </td>
                    <td class="auto-style6" style="width: 25%">
                        <img src="images/icon/kul_sil.png" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        
    </asp:DataList>

    
</asp:Content>

