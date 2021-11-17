<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ConsultantSystem.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="lib/font-awesome/css/all.min.css" rel="stylesheet" />
    <link href="lib/jquery/jquery.min.js" rel="stylesheet" />
    <title>Đăng ký</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container h-custom">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-md-9 col-lg-6 col-xl-6 my-lg-5 py-lg-5">
                    <a href="About.aspx">
                        <img src="https://mdbootstrap.com/img/Photos/new-templates/bootstrap-login-form/draw2.png" class="img-fluid" alt="Sample image" />
                    </a>
                </div>
                <div class="col-md-8 col-lg-6 col-xl-5 offset-xl-1 my-lg-5 py-lg-5">
                    <form>
                        <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
                            <p class="lead fw-normal mb-0 me-3">Đăng ký</p>
                        </div>
                        <!-- Email input -->
                        <div class="form-outline mb-4 mt-3">
                            <asp:TextBox type="text" ID="username" runat="server" class="form-control form-control-lg" placeholder="Nhập tài khoản" />
                            <label class="form-label" for="form3Example3" style="margin-left: 0px;">Tài khoản</label>
                            <div class="form-notch">
                                <div class="form-notch-leading" style="width: 9px;"></div>
                                <div class="form-notch-middle" style="width: 88.8px;"></div>
                                <div class="form-notch-trailing"></div>
                            </div>
                        </div>

                        <!-- Password input -->
                        <div class="form-outline mb-3">
                            <asp:TextBox type="password" runat="server" ID="password" class="form-control form-control-lg" placeholder="Nhập mật khẩu" />
                            <label class="form-label" for="form3Example4" style="margin-left: 0px;">Mật khẩu</label>
                            <div class="form-notch">
                                <div class="form-notch-leading" style="width: 9px;"></div>
                                <div class="form-notch-middle" style="width: 64px;"></div>
                                <div class="form-notch-trailing"></div>
                            </div>
                        </div>
                        <!-- Password input -->
                        <div class="form-outline mb-3">
                            <asp:TextBox type="password" runat="server" ID="confirmPassword" class="form-control form-control-lg" placeholder="Nhập mật khẩu" />
                            <label class="form-label" for="form3Example5" style="margin-left: 0px;">Xác nhận mật khẩu</label>
                            <div class="form-notch">
                                <div class="form-notch-leading" style="width: 9px;"></div>
                                <div class="form-notch-middle" style="width: 64px;"></div>
                                <div class="form-notch-trailing"></div>
                            </div>
                        </div>
                        <div class="text-center text-lg-start mt-4 pt-2">
                            <asp:Button class="btn btn-primary btn-lg" runat="server" OnClick="SignUp_Click" ID="Signup_Click" Style="padding-left: 2.5rem; padding-right: 2.5rem;" Text="Đăng ký" />
                            <p class="small fw-bold mt-2 pt-1 mb-0">Bạn đã có tài khoản? <a href="SignIn.aspx" class="link-danger">Đăng nhập</a></p>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
