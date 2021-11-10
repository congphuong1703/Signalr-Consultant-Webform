<%@ Page Title="Users" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="ConsultantSystem.Users" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/Users.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <div class="body" id="hide-scroll">
        <div class="row" style="overflow: hidden">
            <div class="col-md-2">
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive-md">
                            <h2 class="text-center m-5">List of users</h2>
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModalCreate">Create</button>
                            <table class="table table-bordered">
                                <thead>
                                    <tr class="table-active">
                                        <th class="col-1">#</th>
                                        <th class="col-1">Id</th>
                                        <th class="col-1">Username</th>
                                        <th class="col-1">Role</th>
                                        <th class="col-1">Created At</th>
                                        <th class="col-1">Acction</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td scope="row">Mark</td>
                                        <td scope="row">Otto</td>
                                        <td scope="row">User</td>
                                        <td scope="row">2021-10-20</td>
                                        <td scope="row">
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModalEdit">Edit</button>
                                            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModalDelete">Delete</button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-2">
            </div>
        </div>

    </div>

    <div class="container" style="overflow: hidden">
        <div class="modal" id="myModalCreate">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header d-block">
                        <button type="button" class="close left" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Edit User</h4>
                    </div>
                    <div class="modal-body">
                        <from action="/" method="post">
                            <div class="form-group row">
                                <label for="inputUsernameCreate" class="col-sm-2 col-form-label">User name</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" value="" id="inputUsernameCreate">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPasswordCreate" class="col-sm-2 col-form-label">Password</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="inputPasswordCreate">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputRoleCreate" class="col-sm-2 col-form-label">Role</label>
                                <div class="col-sm-10">
                                    <select class="form-control" id="inputRoleCreate">
                                        <option value="admin">Admin</option>
                                        <option value="user">User</option>
                                    </select>
                                </div>
                            </div>
                        </from>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="editUser()">Save</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container" style="overflow: hidden">
        <div class="modal" id="myModalEdit">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header d-block">
                        <button type="button" class="close left" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Edit User</h4>
                    </div>
                    <div class="modal-body">
                        <from action="/" method="post">
                            <div class="form-group row">
                                <label for="inputUsernameEdit" class="col-sm-2 col-form-label">User name</label>
                                <div class="col-sm-10">
                                    <input type="text" readonly class="form-control" value="" id="inputUsernameEdit">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPasswordEdit" class="col-sm-2 col-form-label">Password</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="inputPasswordEdit">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputRoleEdit" class="col-sm-2 col-form-label">Role</label>
                                <div class="col-sm-10">
                                    <select class="form-control" id="inputRoleEdit">
                                        <option value="admin">Admin</option>
                                        <option value="user">User</option>
                                    </select>
                                </div>
                            </div>
                        </from>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="editUser()">Save</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container" style="overflow: hidden">
        <div class="modal fade" id="myModalDelete">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header d-block">
                        <h4 class="modal-title">Delete User</h4>
                        <button type="button" class="close left" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        Bạn muốn xóa tài khoản này?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="deletUser()">Delete</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
