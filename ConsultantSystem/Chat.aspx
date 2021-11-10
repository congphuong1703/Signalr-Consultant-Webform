<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="ConsultantSystem.Chat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContent" runat="server">
    <title>Trò chuyện</title>
    <link href="Content/Chat.css" rel="stylesheet" />
    <link href="lib/jquery/textavatar.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row clearfix">
            <div class="col-lg-12">
                <div class="card chat-app">
                    <div id="plist" class="people-list">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <button id="searchBtn" class="btn" runat="server">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                            <input type="text" class="form-control" placeholder="Search...">
                        </div>
                        <ul class="list-unstyled chat-list mt-2 mb-0">
                            <asp:Repeater ID="RepeaterUsersMessage" runat="server">
                                <ItemTemplate>
                                    <li class="clearfix">
                                        <div class="textavatar"><%#Eval("username") %></div>
                                        <div class="about">
                                            <div class="name"><%#Eval("username") %></div>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="chat">
                        <div class="chat-header clearfix">
                            <div class="row">
                                <div class="col-lg-6">
                                    <a href="javascript:void(0);" data-toggle="modal" data-target="#view_info">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="avatar">
                                    </a>
                                    <div class="chat-about">
                                        <h6 class="m-b-0">
                                            <asp:Label runat="server" ID="receiveID"></asp:Label>
                                        </h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="chat-history">
                            <ul class="m-b-0">
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <li class="clearfix">
                                            <div class="message-data text-right">
                                                <span class="message-data-time"><%#Eval("created_at") %></span>
                                            </div>
                                            <div class="message other-message float-right"><%#Eval("content")%></div>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <div class="chat-message clearfix">
                            <div class="input-group mb-0">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <button class="btn" id="sendMessageBtn" runat="server">
                                            <i class="fas fa-paper-plane"></i>
                                        </button>
                                    </span>
                                </div>
                                <input type="text" class="form-control" placeholder="Nhập tin nhắn...">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="lib/jquery/jquery.min.js"></script>
    <script scr="lib/jquery/jquery.textavatar.js"></script>
    <script scr="lib/jquery/textavatar.iife.js"></script>
    <script scr="lib/jquery/textavatar.js"></script>
    <script>
        $(document).ready(function () {
            $('.textavatar').textAvatar();
        });

    </script>
</asp:Content>
