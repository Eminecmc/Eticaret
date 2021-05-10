<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="urunGuncelle.aspx.cs" Inherits="ETicaret.Admin.urunGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row" style="margin-top:40px;">
        <div class="col-lg-12">
            <!---728x90--->
            
            <section class="panel">
                <header class="panel-heading" style="margin-top:15px;">
                   <h3>Ürün Güncelle</h3>
                </header>
                <div class="panel-body">
                    <div class="position-center">
                        <div class="form-group">
                            <label for="urunAdi">Ürün Adı</label>
                            <asp:TextBox ID="urunAdi" runat="server" CssClass="form-control" placeholder="Ürün adı"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="urunfiyat">fiyat</label>
                            <asp:TextBox ID="fiyat" runat="server" CssClass="form-control" placeholder="Fiyat"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="urunKategori">Kategori</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control m-bot15" DataSourceID="SqlDataSource1" DataTextField="KategoriAdi" DataValueField="KategoriID"  ></asp:DropDownList>
                           
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eticaretvtConnectionString2 %>" SelectCommand="SELECT * FROM [Kategori]"></asp:SqlDataSource>
                           
                 
                        </div>
                        <div class="form-group">
                            <label for="urunOzellik1">Özellik1</label>
                            <asp:TextBox ID="ozellik1" runat="server" CssClass="form-control" placeholder="Özellik1"></asp:TextBox>
           
                        </div>
                        <div class="form-group">
                            <label for="urunOzellik2">Detay</label>
                            <asp:TextBox ID="ozellik2" runat="server" CssClass="form-control" placeholder="Detay"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="urunFoto">Urun Foto</label>
                             <asp:FileUpload ID="urunfotoa" runat="server" />
                            <p class="help-block">Urun ana fotografı</p>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputFile">Urun Foto1</label>
                              <asp:FileUpload ID="urunfotobir" runat="server" />
                            <p class="help-block">Detay fotograf 1</p>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputFile">Urun Foto2</label>
                              <asp:FileUpload ID="urunfotoiki" runat="server" />
                            <p class="help-block">Detay fotograf 2</p>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputFile">Urun Foto3</label>
                              <asp:FileUpload ID="urunfotouc" runat="server" />
                            <p class="help-block">Detay fotograf 3</p>
                        </div>
                      
                       
                       
                    </div>
                    <asp:Button ID="urunguncelle" runat="server" Text="Güncelle" OnClick="urunguncelle_Click" />
                </div>
            </section>

        </div>
    </div>

</asp:Content>
