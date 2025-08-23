<%@ Page Title="Member Update" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="UpdateMemberDetails.aspx.cs" Inherits="LibraryManagement.Admin.UpdateMemberDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-5 border">
                <p></p>
                <div class="row">

                    <div class="col-12">
                        <div class="form-group">
                            <asp:TextBox ID="txtMemberID" CssClass="form-control" placeholder="Member ID" runat="server"></asp:TextBox>

                        </div>
                    </div>
                   <div class="row">
                       <div class="col-12">
                        <div class="form-group">
                         <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Active" />
                         <asp:Button ID="Button2" CssClass="btn btn-info" runat="server" Text="Pending" />
                         <asp:Button ID="Button3" CssClass="btn btn-danger" runat="server" Text="Seactive" />
                     </div>
                       </div>
                   </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtFullName" CssClass="form-control" placeholder="Full Name" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtDOB" CssClass="form-control" placeholder="DOB" TextMode="Date" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtContactNO" CssClass="form-control" placeholder="Contact No" TextMode="Number" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtEmil" CssClass="form-control" placeholder="Email" TextMode="Email" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">

                        <asp:DropDownList ID="ddlState" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                            <asp:ListItem Text="Dhaka" Value="Dhaka " />
                            <asp:ListItem Text="Rajshahi" Value="Rajshahi " />
                            <asp:ListItem Text="Chittagong" Value="Chittagong " />
                            <asp:ListItem Text="Khulna" Value="Khulna " />
                            <asp:ListItem Text="Barishal" Value="Barishal " />
                            <asp:ListItem Text="Khulna" Value="Khulna " />

                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtCity" CssClass="form-control" placeholder="City" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:TextBox ID="txtPIN" CssClass="form-control" placeholder="PIN CODE" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtAddress" CssClass="form-control" placeholder="Address" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                    </div>


                </div>
            </div>
            <div class="col-sm-7">
                <h4>Members List</h4>
                <div class="table table-responsive">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
