<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="ConsultantSystem.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContent" runat="server">
    <link href="Content/Product.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section id="new-arrivals" class="new-arrivals">
        <div class="container">
            <div class="section-header">
                <h2>Sản phẩm</h2>
            </div>
            <!--/.section-header-->
            <div class="new-arrivals-content">
                <div class="row">
                    <asp:Repeater ID="RepeaterProduct" runat="server">
                        <ItemTemplate>
                            <div class="col-md-3 col-sm-4">
                                <div class="single-new-arrival">
                                    <div class="single-new-arrival-bg">
                                        <img src="<%#Eval("images")%>" alt="new-arrivals images">
                                        <div class="single-new-arrival-bg-overlay"></div>
                                        <%--  <div class="sale bg-1">
                                            <p>sale</p>
                                        </div>--%>
                                        <div class="new-arrival-cart">
                                            <p>
                                                <span class="lnr lnr-cart"></span>
                                                <a href="ProductDetails/id=<%#Eval("id")%>">Xem chi tiết</a>
                                            </p>
                                            <p class="arrival-review pull-right">
                                                <span class="lnr lnr-heart"></span>
                                                <span class="lnr lnr-frame-expand"></span>
                                            </p>
                                        </div>
                                    </div>
                                    <h4><a href="ProductDetails/id=<%#Eval("id")%>"><%#Eval("name") %></a></h4>
                                    <p class="arrival-product-price"><%#Eval("price") %></p>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
        <!--/.container-->

    </section>
</asp:Content>
