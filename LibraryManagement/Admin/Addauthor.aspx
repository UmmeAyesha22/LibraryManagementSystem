<%@ Page Title="Author Details" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="Addauthor.aspx.cs" Inherits="LibraryManagement.Admin.Addauthor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <%--7.sweetalert--%>
<link href="../SweetAlert/Styles/sweetalert.css" rel="stylesheet" />
<script src="../SweetAlert/Scripts/sweetalert.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="container">
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
                </div>
            </div>
        </div>
    </div>
</asp:Content>
