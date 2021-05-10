<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="SepetGuncelle.aspx.cs" Inherits="ETicaret.Admin.SepetGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row" style="margin-top:40px;">
        <div class="col-lg-12">
            <!---728x90--->
            
            <section class="panel">
                <header class="panel-heading" style="margin-top:15px;">
                   <h3>Sepet Güncelle</h3>
                </header>
                <div class="panel-body">
                    <div class="position-center">
                        <div class="form-group">
                            <label for="sepetAdi">Sepet Adı</label>
                            <asp:TextBox ID="SepetAdi" runat="server" CssClass="form-control" placeholder="Sepet adı"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="sepetfiyat">Sepet Fiyat</label>
                            <asp:TextBox ID="fiyat" runat="server" CssClass="form-control" placeholder="Fiyat"></asp:TextBox>
                        </div>
                 
                        </div>
                        <div class="form-group">
                            <label for="kullaniciID">KullaniciID</label>
                            <asp:TextBox ID="kullaniciId" runat="server" CssClass="form-control" placeholder="KullaniciID"></asp:TextBox>
           
                        </div>
                        <div class="form-group">
                            <label for="Status">Status</label>
                            <asp:TextBox ID="status" runat="server" CssClass="form-control" placeholder="Status"></asp:TextBox>
                        </div>
                       
                       
                       
                    </div>
                    <asp:Button ID="sepetguncelle" runat="server" Text="Güncelle" OnClick="sepetguncelle_Click" />
            </section>

        </div>
   

    </div>
</asp:Content>
