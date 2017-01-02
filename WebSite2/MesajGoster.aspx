<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MesajGoster.aspx.cs" Inherits="MesajGoster" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: white;
        }
    </style>
</head>
<body>
    <asp:DataList ID="dlMesajlar" runat="server" CellPadding="4" ForeColor="#333333" Height="236px" Width="913px">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            <table class="auto-style1">
                <tr>
                    <td style="width: 20%">Ad Soyad</td>
                    <td class="auto-style2" style="width: 15%">Mail Adres</td>
                    <td class="auto-style2" style="width: 15%">Telefon </td>
                    <td class="auto-style2" style="width: 35%">Mesaj</td>
                     <td class="auto-style2" style="width: 7.5%">Güncelle</td>
                     <td class="auto-style2" style="width: 7.5%">Sil</td>
                </tr>
            </table>
        </HeaderTemplate>
        <ItemStyle BackColor="#E3EAEB" />
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td style="width: 20%"><%#Eval("AdSoyad") %></td>
                    <td class="auto-style2" style="width: 15%"><%#Eval("Mail") %></td>
                    <td class="auto-style2" style="width: 15%"><%#Eval("Tel") %></td>
                    <td class="auto-style2" style="width: 35%"><%#Eval("Mesaj") %></td>
                    <td class="auto-style2" style="width: 7.5%">
                        <img src="images/iconlar/kul_duzenle.png" /></td>
                    <td class="auto-style2" style="width: 7.5%">
                
                      <a href="MesajGoster.aspx?iletisimId=<%#Eval("iletisimId") %>&islem=sil">  <img src="images/iconlar/kul_sil.png" /></a></td>
                
                
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />

    </asp:DataList>
    
</body>
</html>
