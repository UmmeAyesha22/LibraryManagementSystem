<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="LibraryManagement._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div id="demo" class="carousel slide" data-ride="carousel">
                <%--Indicators--%>
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1" ></li>
                    <li data-target="#demo" data-slide-to="2" ></li>
                </ul>

                <%--The slideshow--%>
                <div class="carousel-inner">
                <div class ="carousel-item active">
                    <img src="SlideImg/l1.jpg" alt="books" width="900px" height="565px" />

                </div>
                  <div class ="carousel-item ">
                    <img src="SlideImg/l2.jpg" alt="books" width="900px" height="565px" />

                </div>
                    <div class ="carousel-item ">
                    <img src="SlideImg/l3.jpg" alt="books" width="900px" height="565px" />

                        </div>

                    </div>
            <%--Left and right controls--%>

            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
            </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <h2>TITLE HEADING</h2>
                        <h5>Title DEscription,Dec 7,2025</h5>
                        <div class="fakimg">Fake Image</div>
                        <p>Some text</p>
                        <p>Lorem</p>
                        <br />
                        <h2>TITLE HEADING</h2>
                        <h5>Title DEscription</h5>
                        <div class="fakimg">Fake Image</div>
                        <p>Some text</p>
                        <p>Lorem</p>
                    </div>
                </div>

        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">BLACK FRIDAY DEAL</div>
                            <div class ="card-body">
                                   <img src="SlideImg/book1.jpg"
                                    class="img-responsive" style="width: 100%" alt="img" />
                            </div>
                            <div class="panel-footer">Buy 1 book and get gift</div>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">BLACK FRIDAY DEAL</div>
                            <div class ="card-body">
                                <img src="SlideImg/book1.jpg"
                            class="img-responsive" style="width: 100%" alt="img" />
                            </div>
                            <div class="panel-footer">Buy 1 book and get gift</div>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">BLACK FRIDAY DEAL</div>
                            <div class ="card-body">
                                <img src="SlideImg/book1.jpg"
                            class="img-responsive" style="width: 100%" alt="img" />
                            </div>
                            <div class="panel-footer">Buy 1 book and get gift</div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
