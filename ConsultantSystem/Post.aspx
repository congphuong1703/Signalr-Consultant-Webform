<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Post.aspx.cs" Inherits="ConsultantSystem.Post" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContent" runat="server">
    <link href="Content/Post.css" rel="stylesheet" />
    <title>Đăng bài</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>Đăng sản phẩm</h3>
                        <p>Điền đầy đủ thông tin phía bên dưới.</p>
                        <div class="requires-validation" novalidate>
                            <div class="col-md-12">
                                <asp:TextBox runat="server" class="form-control" ID="name" type="text" name="name" placeholder="Tiêu đề" required />
                                <div class="valid-feedback">Tiêu đề</div>
                                <div class="invalid-feedback">Tiêu đề không được trống!</div>
                            </div>
                            <div class="col-md-12 mt-3">
                                <asp:TextBox runat="server" class="form-control" ID="price" type="number" name="price" placeholder="Giá" required />
                                <div class="valid-feedback">Giá</div>
                                <div class="invalid-feedback">Giá không được để trống</div>
                            </div>
                            <div class="col-md-12 mt-3">
                                <asp:TextBox runat="server" class="form-control" ID="address" type="text" name="address" placeholder="Địa chỉ" required />
                                <div class="valid-feedback">Địa chỉ</div>
                                <div class="invalid-feedback">Địa chỉ không được để trống!</div>
                            </div>
                            <div class="col-md-12 mt-3">
                                <asp:TextBox runat="server" class="form-control" ID="contact" type="text" name="address" placeholder="Liên hệ" required />
                                <div class="valid-feedback">Liên hệ</div>
                                <div class="invalid-feedback">Liên hệ không được để trống!</div>
                            </div>
                            <div class="col-md-12 mt-3">
                                <textarea runat="server" class="form-control" id="description" name="description" placeholder="Mô tả" />
                                <div class="valid-feedback">Mô tả</div>
                                <div class="invalid-feedback">Mô tả không được để trống!</div>
                            </div>
                            <div class="col-md-12 mt-3">
                                <asp:FileUpload runat="server" type="file" class="form-control-file" ID="images" />
                                <div class="valid-feedback">Hình ảnh</div>
                                <div class="invalid-feedback">Hình ảnh không được để trống!</div>
                            </div>
                            <div class="form-button mt-3">
                                <asp:Button ID="postBtn" OnClick="Post_Click" Text="Đăng bài" type="button" runat="server" class="btn btn-primary" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
