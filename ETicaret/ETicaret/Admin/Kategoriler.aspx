<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="ETicaret.Admin.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 50px; margin-top: 150px;">

        <h4>Kategori Ekle</h4>
        <br />
        <asp:TextBox ID="kategoriadi" runat="server" CssClass="form-control" placeholder="Kategori Adi giriniz..."></asp:TextBox>
        <br />
        <asp:Button ID="KEkle" runat="server" Text="Ekle" CssClass="btn-info" OnClick="KEkle_Click" />
    </div>
    <h2 style="color: #14947A; margin-left: 450px;">Kategoriler</h2>
    <table class="table table-bordered" style="margin-left: 50px; margin-right: 50px; margin-top: 40px;">
        <tr>
            <th>KategoriID</th>
            <th>KategoriAdi</th>
            <th>Sil</th>
            <th>Güncelle</th>
        </tr>
        <asp:Repeater ID="Rkategori" runat="server">
            <ItemTemplate>
                <tr>
                    <th><%# Eval("KategoriID")%></th>
                    <th><%# Eval("KategoriAdi")%></th>
                    <th><a href="Kategoriler.aspx?id=<%# Eval("KategoriID") %>" class="btn btn-danger" onclick="return confirm('Silmek İstediginizden emin misiniz ?')">Sil</a></th>
                    <th><a href="KategoriGuncelle.aspx?deger=<%# Eval("KategoriID") %>" class="btn btn-success">Güncelle</a></th>
                </tr>
            </ItemTemplate>
        </asp:Repeater>


    </table>
</asp:Content>
