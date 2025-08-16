<%@ Page Title="Author Details" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="Addauthor.aspx.cs" Inherits="LibraryManagement.Admin.Addauthor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <%--7.sweetalert--%>
<link href="../SweetAlert/Styles/sweetalert.css" rel="stylesheet" />
<script src="../SweetAlert/Scripts/sweetalert.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="container border-dark">
        <div class="row">
            <div class="col-lg-10 px-lg-4">
                <h4 class="text-base text-primary text-uppercase mb-4 text-center">Add Author</h4>

            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 px-lg-4">
                <div class="form-group mb-4">
                    <%--<label>Author ID</label>--%>
                    <asp:TextBox ID="txtID" required="true" CssClass="form-control border-0 shadow from-control-lg text-base" placeholder="Author ID" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="col-lg-6 px-lg-4">
                <div class="form-group mb-4">
                     <%--<label>Author Name</label>--%>
                    <asp:TextBox ID="txtAuthorName" required="true" CssClass="form-control border-0 shadow from-control-lg text-base" placeholder="Author Name" runat="server"></asp:TextBox>
                </div>
            </div>
              <div class="col-lg-6 px-lg-4">
                <div class="form-group mb-4">
                    <asp:Button Id="btnAdd"  Text="Submit" CssClass="btn btn-success" Height="50px" Width="200px" runat="server" OnClick="btnAdd_Click" />
                    <asp:Button ID="btnUpdate" CssClass="btn btn-info" runat="server" Text="Update" Height="50px" Width="120px" Visible="false" Onclick="btnUpdate_Click" />
                    <asp:Button ID="btnCancel" runat="server"  Text="Cancel" Height="50px" Width="120px" Visible="false"  OnClick="btnCancel_Click"/>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="table-responsive">
                <h4>Author List</h4>
                <hr />
                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <HeaderTemplate>
                        <table class="table table-bordered table-hover ">
                            <thead class="alert-info">
                                <tr>
                                    <th><span>Author ID</span></th>
                                    <th><span>Author Name</span></th>
                                    <th><span>&nbsp;</span></th>
                                </tr>
                            </thead>
                            <tbody>
                            </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("author_id") %> </td>
                            <td><%#Eval("author_name") %> </td>
                            <td style="width:12%">
                                <asp:LinkButton ID="lnkEdit" class="table-link text-primary" runat="server" CommandArgument='<%#Eval("author_id") %>' CommandName="edit" ToolTip="Edit record">
                                    <span class="fa-stack">
                                        <i class="fa fa-square fa-stack-2x"></i>
                                        <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                    </span>
                                </asp:LinkButton>

                                <asp:LinkButton ID="lnkDelete" class="table-link text-danger" runat="server" CommandArgument='<%#Eval("author_id") %>' CommandName="delete"  ToolTip="Delete Record" OnClientClick="return confirm('Do you want to delete this row?');">
                                <span class="fa-stack">
                                    <i class="fa fa-square fa-stack-2x"></i>
                                    <i class="fa fa-trash fa-stack-1x fa-inverse"></i>
                                </span>
                            </asp:LinkButton>

                            </td>
                        </tr>
                    </ItemTemplate>

                    <FooterTemplate>
                             </tbody>
                                </table>
                    </FooterTemplate>
                       
                    

                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
