<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Kullanıcılar.aspx.cs" Inherits="ETicaret.Admin.Kullanıcılar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row" style="margin-top: 40px;">
        <div class="col-lg-12">

            <section class="panel" style="margin-top: 70px;">
                <header class="panel-heading">
                    <h2 style="color:#14947A; margin-left:450px;">Kullanıcılar </h2>
                </header>
                 <div class="panel-body">
                    <div class="position-center">
                <table class="table table-bordered" style="margin-right: 100px; ">
                    <tr>
                        <th>Adı</th>
                        <th>Soyadı</th>
                        <th>Email</th>
                        <th>Statu</th>
                        <th>Sil</th>
                        <th>Güncelle</th>
                    </tr>
                    <asp:Repeater ID="listeleme" runat="server">
                        <ItemTemplate>
                            <tr>
                                <th><%# Eval("UserAdi")%></th>
                                <th><%# Eval("UserSoyadi")%></th>
                                <th><%# Eval("UserMail")%></th>
                                <th><%# Eval("Rol")%></th>
                                <th><a href="Kullanıcılar.aspx?id=<%# Eval("UserID") %>"  class="btn btn-danger" onclick="return confirm('Silmek İstediginizden emin misiniz ?')">Sil</a></th>
                                <th><a href="KullaniciGuncelle.aspx?deger=<%# Eval("USerID") %>" class="btn btn-success">Güncelle</a></th>
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
