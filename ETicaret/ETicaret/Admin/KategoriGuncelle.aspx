<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriGuncelle.aspx.cs" Inherits="ETicaret.Admin.KategoriGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div style="margin-left: 50px; margin-top: 150px;">

         <h2 style="color:#14947A; margin-left:450px;">Kategori Güncelleme</h2>
        <br />
        <asp:TextBox ID="kategoriadi" runat="server" CssClass="form-control" ></asp:TextBox>
        <br />
        <asp:Button ID="Guncelle" runat="server" Text="Kaydet" CssClass="btn-group" OnClick="Guncelle_Click" />
    </div>

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
                    <th><a href="Kategoriler.aspx?id=<%# Eval("KategoriID") %>" class="btn btn-danger">Sil</a></th>
                    <th><a href=" KategoriGuncelle.aspx?deger=<%# Eval("KategoriID") %>" class="btn btn-success">Güncelle</a></th>
                </tr>
            </ItemTemplate>
        </asp:Repeater>


    </table>

</asp:Content>
