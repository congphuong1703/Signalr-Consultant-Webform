<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="ConsultantSystem.Chat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContent" runat="server">
    <title>Trò chuyện</title>
    <link href="Content/Chat.css" rel="stylesheet" />
    <link href="lib/jquery/textavatar.css" rel="stylesheet" />
    <%--<script src="/Scripts/jquery-3.3.1.min.js"></script>--%>
    <script src="/Scripts/jquery.signalR-2.4.1.min.js"></script>
    <script src="/signalr/hubs"></script>
    <script src="Content/chat.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row clearfix">
            <div class="col-lg-12">
                <div class="card chat-app">
                    <div id="plist" class="people-list">
                        <ul class="list-unstyled chat-list mt-2 mb-0">
                            <asp:Repeater ID="RepeaterUsersMessage" runat="server">
                                <ItemTemplate>
                                    <li class="clearfix joinGroup">
                                        <div class="about">
                                            <div class="name"><a href="Chat?username=<%#Eval("username") %>"><%#Eval("username") %></a></div>
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
                                        <asp:Label runat="server" ID="username"></asp:Label>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="chat-history">
                            <ul class="m-b-0" id="discussion">
                                <asp:Repeater ID="RepeaterMessageHistory" runat="server">
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
                                        <a class="btn" id="sendMessageBtn">
                                            <i class="fas fa-paper-plane"></i>
                                        </a>
                                    </span>
                                </div>
                                <input type="text" id="message" class="form-control" placeholder="Nhập tin nhắn...">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
