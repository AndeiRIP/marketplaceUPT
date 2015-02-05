<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Our Marketplace -  source of software for Eclipse</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="wrapper">
<!-- start header -->
<div id="logo">
	<h1><a href="#">Our Marketplace</a></h1>
	<h2> &raquo;&nbsp;&nbsp;&nbsp; source of software for Eclipse</h2>
</div>
<jsp:include page="includes/header.jsp"/>'
<!-- end header -->
</div>
<!-- start page -->
<div id="page">
	<!-- start content -->
	<div id="contenthome">
		<div class="post">
			<h1 class="title">Welcome to our website </h1>
			<div class="entry">
				<p>If you want to add solutions, please use the <a href="admin/">admin interface</a></p>
			</div>
		</div>
		<div class="post">
			<h2 class="title">Features solutions</h2>
			<c:forEach var="item" items="${featured}">
			<div class="entry">
				<img style="float: left; padding:5px;" src="${item.image}" width="110" height="80"></img>
				<h3><a href="content/${item.id}">${item.name}</a></h3>
				<p>${item.shortdescription}</p>
			</div>
			</c:forEach>
		</div>
	</div>
	<!-- end content -->
	<!-- start sidebar -->
	<div id="sidebar">
		<ul>
			<li id="search">
				<h2>Search</h2>
				<form method="get" action="search.htm">
					<fieldset>
					<input type="text" id="query" name="query" value="" />
					<input type="submit" id="x" value="Search" />
					</fieldset>
				</form>
			</li>
			<li>
				<h2>Most popular</h2>
				<ul>
					<c:forEach var="item" items="${popular}">
					<li><a href="content/${item.id}">${item.name}(${item.count})</a></li>
					</c:forEach>
				</ul>
			</li>
			
		</ul>
	</div>
	<!-- end sidebar -->
	<div style="clear: both;">&nbsp;</div>
</div>
<!-- end page -->
<!-- start footer -->
<jsp:include page="includes/footer.html"/> 
<!-- end footer -->
</body>
</html>
