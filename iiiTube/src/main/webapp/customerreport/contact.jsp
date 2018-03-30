<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Modern Business - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/modern-business.css" rel="stylesheet">

  </head>

  <body>

    	 <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="index.html">III TUBE</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="about.html">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="services.html">Services</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="contact.html">contact</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Portfolio
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                <a class="dropdown-item" href="portfolio-1-col.html">1 Column Portfolio</a>
                <a class="dropdown-item" href="portfolio-2-col.html">2 Column Portfolio</a>
                <a class="dropdown-item" href="portfolio-3-col.html">3 Column Portfolio</a>
                <a class="dropdown-item" href="portfolio-4-col.html">4 Column Portfolio</a>
                <a class="dropdown-item" href="portfolio-item.html">Single Portfolio Item</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Blog
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="blog-home-1.html">Blog Home 1</a>
                <a class="dropdown-item" href="blog-home-2.html">Blog Home 2</a>
                <a class="dropdown-item" href="blog-post.html">Blog Post</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">  
           	     客服中心	
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="../customerreport/contact.jsp">聯絡我們</a>
                <a class="dropdown-item" href="../customerreport/faq.jsp">FAQ</a>
             
              </div>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">線上回報單
        <small></small>
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">Contact</li>
      </ol>

      

      <!-- Contact Form -->
      <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
      <div class="row">
        <div class="col-lg-8 mb-4">
          <h3>讓我們知道您的意見~</h3>
          <form  action="<c:url value="/customerreport/qa.controller"/>" name="sentMessage" id="contactForm" enctype="multipart/form-data"  method="post">
            <div class="control-group form-group">
              <div class="controls">
                <label>項目:</label>
<!--                 <input type="text" class="form-control" id="topic"  name="topic" > -->
	                <select  class="form-control"  id="topic"  name="topic">
					  <option value="直播">直播</option>
					  <option value="商城">商城</option>
					  <option value="競標">競標</option>
					  <option value="影音">影音</option>
					</select>
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Account/帳號<span style="color:red">*</span></label>
                <input type="text" class="form-control" id="account" name="idd" value="${LoginOK.account}" >
                <p class="help-block"></p>
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Name/姓名與職稱<span style="color:red">*</span></label>
                <input type="text" class="form-control" id="nickname"  name="name" value="${LoginOK.name}" required="required" >
              </div>
            </div>
           
            <div class="control-group form-group">
              <div class="controls">
                <label>Email/電子信箱<span style="color:red">*</span></label>
                <input type="email" class="form-control" id="email" name="mailbox" value="${LoginOK.email}">
              </div>
            </div>

            <div class="control-group form-group">
              <div class="controls">
                <label>Title/主旨<span style="color:red">*</span></label>
                <input type="text" class="form-control" id="title" name="title"  value="${param.title}">
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Messeage/聯絡訊息<span style="color:red">*</span></label>
                <textarea rows="4" cols="180"  class="form-control" name="report" value="${param.report}" required="required"></textarea>
              </div>
            </div>

            <div class="control-group form-group">
              <div class="controls">
                <label>照片:</label>
                <input type="file" class="form-control" id="picture" name="picture" >
              </div>
            </div>
                   <div class="control-group form-group">
              <div class="controls">
                <label>照片:</label>
                <input type="file" class="form-control" id="picture" name="picture" >
              </div>
            </div>
            <div id="success"></div>
            <!-- For success/fail messages -->
            <input type="submit" class="btn btn-primary" id="sendMessageButton" name="prodaction" value="submit"/>
          </form>
        </div>

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Contact form JavaScript -->
    <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
    <script src="../js/jqBootstrapValidation.js"></script>
<!--     <script src="js/contact_me.js"></script> -->

  </body>

</html>