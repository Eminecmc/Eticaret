<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="sepet.aspx.cs" Inherits="ETicaret.Admin.sepet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row" style="margin-top: 40px;">
        <div class="col-lg-12">

            <section class="panel" style="margin-top: 70px;">
                <header class="panel-heading">
                    <h2 style="color:#14947A; margin-left:450px;">SEPET </h2>
                </header>
                 <div class="panel-body">
                    <div class="position-center">
                <table class="table table-bordered" style="margin-right: 100px; ">
                    <tr>
                        <th>Ürün</th>
                        <th>Ürün Fiyat</th>
                        <th>Kullanıcı ID</th>
                        <th>Status</th>
                        <th>Sil</th>
                        <th>Güncelle</th>
                    </tr>
                    <asp:Repeater ID="listeleme" runat="server">
                        <ItemTemplate>
                            <tr>
                                <th><%# Eval("SepetAdi")%></th>
                                <th><%# Eval("SepetFiyat")%></th>
                                <th><%# Eval("KullaniciID")%></th>
                                <th><%# Eval("Status")%></th>
                                <th><a href="Sepet.aspx?id=<%# Eval("SepetID") %>" class="btn btn-danger" onclick="return confirm('Silmek İstediginizden emin misiniz ?')">Sil</a></th>
                                <th><a href="SepetGuncelle.aspx?deger=<%# Eval("SepetID") %>" class="btn btn-success">Güncelle</a></th>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>

                    
                </table>
                        </div>
                     </div>
            </section>
        </div>
    </div>

</asp:Content>
