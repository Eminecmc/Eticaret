<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="urunListele.aspx.cs" Inherits="ETicaret.Admin.urunListele" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-top: 40px;">
        <div class="col-lg-12">

            <section class="panel" style="margin-top: 60px;">
                <header class="panel-heading">

                            <div class="col-lg-12">
                                <h1 style="color:#14947A; margin-left:450px;">Ürün Listesi</h1>
                                <br />
                            </div>
                       
                </header>
                <br />
                <table class="table table-bordered" style="margin-left: 50px; margin-right: 100px; margin-top: 40px;">
                    <tr>
                        <th>Ürün Adi</th>
                        <th>Ürün Fiyat</th>
                        <th>Ürün Foto</th>
                        <th>Detay</th>
                        <th>Sil</th>
                        <th>Güncelle</th>
                    </tr>
                    <asp:Repeater ID="listeleme" runat="server">
                        <ItemTemplate>
                            <tr>
                                <th><%# Eval("UrunAdi")%></th>
                                <th><%# Eval("UrunFiyat")%> TL</th>
                                <th>
                                    <img class="img-responsive" src="<%# Eval("UrunFoto") %>" style="width: 70px; height: 70px;" alt="<%# Eval("UrunAdi") %>"></th>
                                <th><a href="urunDetay.aspx?id=<%# Eval("UrunID") %>" class="btn btn-info">Detay</a></th>
                                <th><a href="urunListele.aspx?id=<%# Eval("UrunID") %>" class="btn btn-danger">Sil</a></th>
                                <th><a href="urunGuncelle.aspx?deger=<%# Eval("UrunID") %>" class="btn btn-success">Güncelle</a></th>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>


                </table>
            </section>
        </div>
    </div>

</asp:Content>


