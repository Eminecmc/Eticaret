<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="KullaniciGuncelle.aspx.cs" Inherits="ETicaret.Admin.KullaniciGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row" style="margin-top:40px;">
        <div class="col-lg-12">
            <!---728x90--->
            <section class="panel">
                <header class="panel-heading" style="margin-top:15px;">
                   <h3>Kullanıcı Güncelle</h3>
                </header>
                <div class="panel-body">
                    <div class="position-center">
                        <div class="form-group">
                            <label for="urunAdi">Kullanıcı Adı</label>
                            <asp:TextBox ID="useradi" runat="server" CssClass="form-control" placeholder="Kullanıcı adı"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="usersoyad">Kullanıcı Soyadı</label>
                            <asp:TextBox ID="usersoyadi" runat="server" CssClass="form-control" placeholder="Soyad"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="urunfiyat">Kullanıcı E-Mail</label>
                            <asp:TextBox ID="usermail" runat="server" CssClass="form-control" placeholder="mail"></asp:TextBox>
                        </div>
                        
                        <div class="form-group">
                            <label for="rol">Rol</label>
                            <asp:TextBox ID="userrol" runat="server" CssClass="form-control" placeholder="rol"></asp:TextBox>
           

                                 
                    </div>
                        <asp:button runat="server" text="Güncelle" OnClick="Unnamed1_Click" />
                </div>
                    </div>
            </section>

        </div>
    </div>
</asp:Content>
