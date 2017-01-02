<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="ortala">
        <div class="iletisim">

            <div class="sol">
                <b>Adres</b>	:	 ESENYURT / İSTANBUL<p>
                    <b>Telefon</b>	:	0xxx xx xx
                    <p>
                        <b>Fax</b>	:	0xxx xx xx
                        <p>
                            <b>Mail</b>
                :	xxxx@gmail.com
            </div>
            <div class="dikey-cizgi"></div>
            <div class="sag">
                <form runat="server">
                    <asp:TextBox ID="txtAd" CssClass="textbox" placeholder="Ad Soyad" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtMail" CssClass="textbox" placeholder="Mailiniz" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtTel" CssClass="textbox" placeholder="Telefon numaranız" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtMesaj" CssClass="textarea" placeholder="Mesajınız" runat="server"></asp:TextBox>

                    <div class="clear"></div>
                    <asp:Button ID="btnReset" CssClass="reset" runat="server" Text="Temizle" />
                    <asp:Button ID="btnGonder" runat="server" CssClass="button" Text="Gönder" OnClick="btnGonder_Click" />
           
                </form>

            </div>
            <div class="clear"></div>
            <div class="maps">
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3008.4755786178625!2d29.072280000000006!3d41.05859600000001!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14cac9bf1ce663c5%3A0x805278c6a9a01617!2zRWvFn2lvxJ9sdSBTaw!5e0!3m2!1str!2s!4v1397762301187" width="970" height="200" frameborder="0" style="border: 0"></iframe>
            </div>
        </div>

        <div class="clear"></div>
    </div>
    <!-- ortala -->
</asp:Content>

