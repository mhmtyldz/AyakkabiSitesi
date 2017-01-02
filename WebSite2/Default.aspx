<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- red_bg -->
    <div class="red_bg">
        <!-- ortala -->
        <div class="ortala">
            <!-- slider_generic -->
            <div class="slider_generic">
                <!-- slider -->
                <div class="slider">
                    <ul>
                        <li><a href="">
                            <img src="assets/images/slider.jpg" width="959" height="263" alt="../" /></a></li>
                        <li><a href="">
                            <img src="assets/images/slider.jpg" width="959" height="263" alt="../" /></a></li>
                        <li><a href="">
                            <img src="assets/images/slider.jpg" width="959" height="263" alt="../" /></a></li>
                    </ul>
                </div>
                <!-- slider -->

                <!-- slider_swap -->
                <div class="slider_swap">
                    <ul>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                </div>
                <!-- slider_swap -->
            </div>
            <!-- slider_generic -->
            <div class="slider_generic_shadow"></div>
        </div>
        <!-- ortala -->
    </div>
    <!-- red_bg -->

    <!-- ortala -->
    <div class="ortala">
        <!-- p_generic -->
        <div class="p_generic">
            <!-- p1_box -->
            <div class="p1_box">
                <h1>HAKKIMIZDA</h1>
                <div class="clear"></div>
                <a class="fancybox" href="assets/images/hakkimizda.png" data-fancybox-group="gallery" title="HAKKIMIZDA">
                    <img src="assets/images/hakkimizda.png" alt="" />
                </a>
                <h2>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing of Lorem Ipsum.</h2>
            </div>
            <!-- p1_box -->

            <!-- p2_box -->
            <asp:Repeater ID="rpDuyuru" runat="server">
                <ItemTemplate>
                    <div class="p2_box">
                <h1><%#Eval("DuyuruBaslik") %></h1>
                <div class="clear"></div>
                <h2> <%# Eval("DuyuruIcerik") %></h2>
                <div style="text-align:right; font-size:10px;"> <%# Eval("DuyuruTarih", "{0:d}") %></div>
            </div>
                </ItemTemplate>
            </asp:Repeater>
            
   
            <!-- p2_box -->

        </div>
        <!-- p_generic -->

        <!-- p_generic_r -->
        <div class="p_generic_r">
            <!-- p3_box -->
            <div class="p3_box">
                <h1>Kategoriler</h1>
                <asp:Repeater ID="rpKategori" runat="server">
                    <ItemTemplate>
                        <ul>
                            <li><span></span><a href=""><%#Eval("KategoriAd") %></a></li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
            <!-- p3_box -->

            <!-- p3_box -->
            <div class="p3_box" style="background: transparent; margin-top: 20px">
                <h1>Etiketler</h1>
                <ul>
                    <li><span></span><a href="">Log in</a></li>
                    <li><span></span><a href="">Entries RSS</a></li>
                    <li><span></span><a href="">Comments RSS</a></li>
                    <li><span></span><a href="">Lorem Ipsun Dolar</a></li>
                    <li><span></span><a href="">Lorem Ipsun</a></li>
                </ul>
            </div>
            <!-- p3_box -->
        </div>
        <!-- p_generic_r -->

        <div class="clear"></div>
    </div>
    <!-- ortala -->

    <!-- ============ include / footer.html ============ -->
    <!-- footer_bg -->
    <div class="footer_bg">
        <!-- ortala -->
        <div class="ortala">
            <div class="footer">
                <h1>Copyright © 2014</h1>
                <a href="">Designed by <b>webturkuaz.com</b></a>
            </div>
        </div>
        <!-- ortala -->
    </div>
    <!-- footer_bg -->

</asp:Content>

