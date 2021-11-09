﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="ConsultantSystem.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="lib/font-awesome/css/all.min.css" rel="stylesheet" />
    <link href="lib/jquery/jquery.min.js" rel="stylesheet" />
    <title>Đăng nhập</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <br>
            <p class="text-center">More bootstrap 4 components on <a href="http://bootstrap-ecommerce.com/">Bootstrap-ecommerce.com</a></p>
            <hr>
            <div class="card bg-light">
                <article class="card-body mx-auto" style="max-width: 400px;">
                    <h4 class="card-title mt-3 text-center">Tạo tài khoản</h4>
                    <form>
                        <div class="form-group input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                            </div>
                            <input name="" class="form-control" placeholder="Full name" type="text">
                        </div>
                        <!-- form-group// -->
                        <div class="form-group input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                            </div>
                            <input name="" class="form-control" placeholder="Email address" type="email">
                        </div>
                        <!-- form-group// -->
                        <div class="form-group input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-phone"></i></span>
                            </div>
                            <input name="" class="form-control" placeholder="Phone number" type="text">
                        </div>
                        <!-- form-group// -->
                        <div class="form-group input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-building"></i></span>
                            </div>
                            <select class="form-control">
                                <option selected="">Select job type</option>
                                <option>Designer</option>
                                <option>Manager</option>
                                <option>Accaunting</option>
                            </select>
                        </div>
                        <!-- form-group end.// -->
                        <div class="form-group input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-lock"></i></span>
                            </div>
                            <input class="form-control" placeholder="Create password" type="password">
                        </div>
                        <!-- form-group// -->
                        <div class="form-group input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-lock"></i></span>
                            </div>
                            <input class="form-control" placeholder="Repeat password" type="password">
                        </div>
                        <!-- form-group// -->
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block">Create Account  </button>
                        </div>
                        <!-- form-group// -->
                        <p class="text-center">Have an account? <a href="">Log In</a> </p>
                    </form>
                </article>
            </div>
            <!-- card.// -->

        </div>
        <!--container end.//-->

        <br>
        <br>
        <article class="bg-secondary mb-3">
            <div class="card-body text-center">
                <h3 class="text-white mt-3">Bootstrap 4 UI KIT</h3>
                <p class="h5 text-white">
                    Components and templates 
                    <br>
                    for Ecommerce, marketplace, booking websites 
and product landing pages
                </p>
                <br>
                <p>
                    <a class="btn btn-warning" target="_blank" href="http://bootstrap-ecommerce.com/">Bootstrap-ecommerce.com  

                        <i class="fa fa-window-restore "></i></a>
                </p>
            </div>
            <br>
            <br>
        </article>
    </form>
</body>
</html>