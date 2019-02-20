<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Info</title>

<!-- <link rel="stylesheet" type="text/css" href="/css/styles.css">
<link rel="stylesheet" type="text/css" href="/css/InfoStyle.css"> -->

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">

    <style>
        * {
        font-family: 'Do Hyeon', sans-serif;
        }
        .btn {
            float: left;
        }
        .box {
            margin: 0 auto;
            width: 50%;
            height: 230px;
            border: 3px solid gray;
            /* display: inline-block;
            vertical-align: top; */
            padding: 50px;
            border-radius: 10px;
        }
    </style>

</head>
<body>
	<div class="container">
	
		<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
            <h1 class="my-0 mr-md-auto font-weight-heavy">${idea.user.firstName}'s Idea</h1>
            <nav class="my-2 my-md-0 mr-md-3"> 
            	<a class="p-2" href="/ideas">Back To DashBoard</a>
            	<a class="p-2" href="/users/logout">Logout</a>
            </nav>
        </div>
        
        <div class = "box">
			<h2>${ idea.idea }</h2>
			<h4>Created By: ${ idea.user.firstName } ${ idea.user.lastName }</h4>
			<h4>Contact Creator: ${ idea.user.email }</h4>
		</div>
	
	<hr/>
	
	<h3>Users Who Have Liked This Idea:</h3>
	
	<table class="table table-bordered table-hover">
		<tr>
			<th><h4>Name:</h4></th>
			<th><h4>Email:</h4></th>
		</tr>
		<c:forEach items="${ idea.getUsers() }" var = "user">
			<tr>
				<td><h5>${ user.firstName } ${ user.lastName }</h5></td>
				<td><h5>${ user.email }</h5></td>
			</tr>
		</c:forEach>
	</table>
	
	<c:if test = "${ isUser }">
		<form action = "/ideas/edit/${ idea.id }" method = "get">
			<input class="btn btn-lg btn-success" type = "submit" value = "Edit">
		</form>
	</c:if>
	</div>
	
</body>
</html>