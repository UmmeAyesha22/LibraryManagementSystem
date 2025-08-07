<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="LibraryManagement.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>

     <meta charset ="utf-8" />
 <meta name="viewport" content="width-device,initial-scale=1" />

 <%--1.Bootstrap CSS--%>
 <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />


 <%--2.datatable CSS--%>

 <link href="dataTable/css/dataTables.dataTables.min.css" rel="stylesheet" />

 <%--3.Fontawesome CSS--%>
 <link href="fontawesome/css/all.css" rel="stylesheet" />


 <%--4.Jquery CSS--%>
 <script src="Bootstrap/js/jquery-3.3.1.slim.min.js"></script>


 <%--5.Popper CSS--%>
 <script src="Bootstrap/js/popper.min.js"></script>


 <%--6.Bootstrap CSS--%>

 <script src="Bootstrap/js/bootstrap.min.js"></script>


</head>
<body>
    <form id="form1" runat="server">
       <div>
     <nav class="navbar navbar-expand-sm navbar-dark bg-primary">
         <a class="navbar-brand" href="default.aspx">
             <img src="LogoImg/download.jpg" alt="logo" width="49" height="49" />
             LMS Application</a>
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
             <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="collapsibleNavbar">
             <ul class="navbar-nav">
                 <li class="nav-item">
                     <a class="nav-link" href="default.aspx"><b>Home</b>
                     </a>
                 </li>
                 <li class="nav-item">
                     <a class="nav-link" href="#"><b>Library Collections</b>
                     </a>
                 </li>

                 <li class="nav-item">
                     <a class="nav-link" href="#"><b>Archieves</b>
                     </a>
                 </li>

                 <li class="nav-item">
                     <a class="nav-link" href="#"><b>Publications</b>
                     </a>
                 </li>
                 <li class="nav-item">
                     <a class="nav-link" href="#"><b>Gallery</b>
                     </a>
                 </li>

                 <li class="nav-item">
                     <a class="nav-link" href="#"><b>Contact Us</b>
                     </a>
                 </li>
             </ul>
         </div>

         <%--Navbar right icon--%>
         <div class="pmd-navbar-right-icon ml-auto">
             
             <a class="btn btn-sm btn-primary" href="Login.aspx">Sign In</a>

         </div>
     </nav>

     <div class="jumbotron text-center alert alert-primary" style=""margin-bottom: 0">
         <h1>Library Management System</h1>
         <p>Building community.Inspiring readers .Expanding book excess!</p>

     </div>
     <div class="container-fluid">
         <div class="row">
          <div class="col-sm-2 border border-info">
              <h2>Filter</h2>
             
              <p>Top search</p>
              <ul class="nav nav-pills flex-column">
                  <li class="nav-item">
                      <a class="nav-link active" href="#">Active</a>
                  </li>
                                          <li class="nav-item">
                     <a class="nav-link " href="#">Link</a>
                 </li>
                                          <li class="nav-item">
                     <a class="nav-link " href="#">Link</a>
                 </li>
                  <li class="nav-item">
                     <a class="nav-link disabled" href="#">Disabled</a>
                 </li>
              </ul>
              <hr class="d-sm-none" />

          </div>
          <div class="col-sm-10 border border-info">
                 <%--Write ur code here--%>
          </div>

         </div>

     </div>

     <br />
     <div class="jumbotron text-center alert alert-danger" style="margin-bottom:0; border:2px solid red">
          <p>Footer</p>
          <div class="container">
              <div class="row">
                  <div class="col-md-4">
                      <div class="footer-pad">
                          <h4>Heading1</h4>
                          <ul class="list-unstyled">
                              <li><a href="#">Payment Cente</a><li>
                             <li><a href="#">News an Update</a></li>
                          </ul>
                      </div>

                  </div>
                  <div class="col-md-4">
                      <div class="footer-pad">
                          <h4>Heading1</h4>
                           <ul class="list-unstyled">
                              <li><a href="#"></a></li>
                             <li><a href="#">Website</a></li>
                               <li><a href="#">Disclaimer</a></li>
                          </ul>
               </div>
                  </div>

                     <div class="col-md-4">
                        <div class="footer-pad">
                            <h4>Follow Us</h4>
                             <ul class="list-unstyled">
                                <li><a href="#"></a></li>
                               <li><a href="#">Facebook</a></li>
                                 <li><a href="#">Twitter</a></li>
                            </ul>
                 </div>
                    </div>
              </div>

             <div class="row">
                 <div class="col-md-12 fa-copyright border-dark">
                     <p class="text-center">&copy; Copyright 2023 .All rights reserved.</p>

                 </div>
             </div>



          </div>
     </div>

    
  
 </div>
    </form>
</body>
</html>
