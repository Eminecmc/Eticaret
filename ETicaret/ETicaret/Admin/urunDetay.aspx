<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="urunDetay.aspx.cs" Inherits="ETicaret.Admin.urunDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <asp:ListView ID="detay" runat="server">
        <ItemTemplate>

            <div class="container container-int" style="margin-top:100px; margin-left:50px;">
                <div class="row">
                    <div class="col-md-6">
                        <img class="img-responsive" src="<%# Eval("UrunFoto") %>" style="width:350px; height:350px;" alt="<%# Eval("UrunAdi") %>" />
                    </div>
                    <div class="col-md-4">
                        <h3><small>Ürün</small></h3>
                        <small><%# Eval("UrunAdi") %></small>
                        <h3><small>Fiyat</small></h3>
                        <small><%# Eval("UrunFiyat") %> TL</small>
                        <h3><small>Teknik Özellik</small></h3>
                        <p><small><%# Eval("UrunOzellik") %></small></p>
                        <h3><small>Ürün Detay</small></h3>
                        <p><%# Eval("UrunOzellik2") %></p>
                       

                    </div>

                </div>

                <div class="row">

                    <div class="col-lg-12">
                        <h3 class="page-header">Resimler</h3>
                    </div>

                    <div class="col-sm-3 col-xs-6">

                        <!-- /.overlay-portfolio -->
                        <img class="img-responsive img-customer" src="<%# Eval("UrunFoto1") %>" style="width:250px; height:250px;" alt="<%# Eval("UrunAdi") %>" />
                        </a>
                    </div>

                    <div class="col-sm-3 col-xs-6">

                        <!-- /.overlay-portfolio -->
                        <img class="img-responsive img-customer" src="<%# Eval("UrunFoto2") %>" style="width:250px; height:250px;" alt="<%# Eval("UrunAdi") %>" />
                        </a>
                    </div>

                    <div class="col-sm-3 col-xs-6">

                        <!-- /.overlay-portfolio -->
                        <img class="img-responsive img-customer" src="<%# Eval("UrunFoto3") %>" style="width:250px; height:250px;" alt="<%# Eval("UrunAdi") %>" />
                        </a>
                    </div>
                </div>
                <br />
                 <a class="btn btn-primary" href="urunGuncelle.aspx?deger=<%# Eval("UrunID") %>">Güncelle<i class="fa fa-angle-right"></i></a>
            </div>
            <!-- /.container -->
        </ItemTemplate>
   </asp:ListView>
</asp:Content>
