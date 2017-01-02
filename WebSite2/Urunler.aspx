<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Urunler.aspx.cs" Inherits="Urunler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- red_bg -->
    <div class="red_bg" style="height: 120px;">
        <!-- ortala -->
        <div class="ortala">
            <!-- hakkimiz -->
            <div class="hakkimiz">
                <img src="assets/images/urunlerimiz.png" width="239" height="38" alt="../" />
            </div>
            <!-- hakkimiz -->
        </div>
        <!-- ortala -->
    </div>
    <!-- red_bg -->

    <!-- ortala -->
    <div class="ortala">
        <!-- u_generic -->
        <div class="u_generic">
            <!-- u1_box -->
            <asp:Repeater ID="rpUrunler" runat="server">
                <ItemTemplate>
                    <div class="u1_box">
                        <a class="fancybox" href="assets/images/img_yok.png" data-fancybox-group="gallery" title="Ürünler">
                            <img src="../UrunResimleri/200/<%#Eval("UrunResim") %>" width="234" height="234" alt="" />
                        </a>
                        <h1><%#Eval("UrunAd") %></h1>
                    </div>
                   
                </ItemTemplate>
            </asp:Repeater>













        </div>
        <!-- u_generic -->

        <div class="clear"></div>
    </div>
    <!-- ortala -->
</asp:Content>

