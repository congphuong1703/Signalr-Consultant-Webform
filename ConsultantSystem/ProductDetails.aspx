<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ProductDetails.aspx.cs" Inherits="ConsultantSystem.ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContent" runat="server">
    <link href="Content/ProductDetail.css" rel="stylesheet" />
    <title>Chi tiết sản phẩm</title>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section class="mb-5" id="hide-scroll">
        <asp:Repeater ID="RepeaterProductDetails" runat="server">
            <ItemTemplate>
                <div class="row">
                    <div class="text-center p-3">
                        <h2><strong>Tên : <%#Eval("name") %></strong></h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-4 mb-4 mb-md-0">
                        <div>
                            <div class="row product-gallery mx-1">
                                <div class="col-12 mb-0">
                                    <div class="row">
                                        <figure class="view overlay rounded z-depth-1 main-img">
                                            <img src="<%#Eval("images") %>"
                                                class="img-fluid z-depth-1 rounded">
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 text-justify">
                        <p class="mb-2 text-uppercase"><strong>Thông tin</strong></p>
                        <p class="pt-1">
                            <%#Eval("description") %>
                        </p>
                        <div class="table-responsive">
                            <table class="table table-sm table-borderless mb-0">
                                <tbody>
                                    <tr>
                                        <th class="pl-0 w-25" scope="row">Mức giá</th>
                                        <td><%#Eval("price") %></td>
                                    </tr>
                                    <tr>
                                        <th class="pl-0 w-25" scope="row">Địa chỉ</th>
                                        <td><%#Eval("address") %></td>
                                    </tr>
                                    <tr>
                                        <th class="pl-0 w-25" scope="row">Liên hệ</th>
                                        <td><%#Eval("username") %> : <%#Eval("contact") %></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <hr>
                        <asp:Button runat="server" type="button" Text="Liên hệ" ID="chatBtn" class="btn btn-primary btn-md mr-1 mb-2" />
                    </div>
                    <div class="col-md-2"></div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </section>
    <!--Section: Block Content-->
</asp:Content>
