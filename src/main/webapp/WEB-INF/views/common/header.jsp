<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title><%= request.getAttribute("pageTitle") %></title>
  <meta name="description" content="">
  <meta name="keywords" content="">
  
  <!-- Favicons -->
  <link href="${pageContext.request.contextPath}/assets/img/favicon.png" rel="icon">
  <link href="${pageContext.request.contextPath}/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
	<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/assets/vendor/aos/aos.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Main CSS File -->	
  <link href="${pageContext.request.contextPath}/assets/css/main.css" rel="stylesheet">
</head>
<body class="<%= request.getAttribute("pageClass") %>">
  <header id="header" class="header d-flex align-items-center sticky-top">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
      <a href="${pageContext.request.contextPath}/" class="logo d-flex align-items-center">
        <h1 class="sitename">SSAFY</h1>
      </a>
      <nav id="navmenu" class="navmenu">
        <ul>
          <li><a href="${pageContext.request.contextPath}/" class="active">Home</a></li>
          <li><a href="${pageContext.request.contextPath}/list">List</a></li>
          <li><a href="${pageContext.request.contextPath}/services.jsp">Services</a></li>
          <li><a href="${pageContext.request.contextPath}/contact.jsp">Contact</a></li>
        </ul>
        <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
      </nav>
    </div>
  </header>
  
  <%@ include file="../common/loginheader.jsp"%>
