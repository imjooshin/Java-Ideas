<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DashBoard</title>

<!-- <link rel="stylesheet" type="text/css" href="/css/styles.css">
<link rel="stylesheet" type="text/css" href="/css/dashboardStyle.css"> -->

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
    <style>
        * {
            font-family: 'Do Hyeon', sans-serif;
        }
        .btn {
            float: left;
            margin-right: 10px;
        }
        .table {
            width: 100%;
        }
 /*        .favorite {
            /* border: 1px solid black; */
            width:50%;
            padding: 5px;
        } */
/*         .list {
            /* border: 1px solid black; */
            width: 50%;
            padding: 5px;
        } */
        /* .box {
            display: inline-block;
            float: left;
        } */
    </style>
</head>
<body>
	<div class="container">
	    <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
        	<h1 class="my-0 mr-md-auto font-weight-heavy">Idea Dashboard</h1>
        	<nav class="my-2 my-md-0 mr-md-3"> 
            	<a class="p-2" href="/users/logout">Logout</a>
        	</nav>
    	</div>
	
	<table class="table table-bordered table-hover">
		<tr>
			<th><h3>Name:</h3></th>
			<th><h3>Created By:</h3></th>
			<th><h3>Likes:</h3></th>
			<th><h3>Actions:</h3></th>
		</tr>
		
		<c:forEach items="${ ideas }" var = "idea">
			<tr>
				<td><h3><a href="/ideas/${ idea.id }">${ idea.idea }</a></h3></td>
				<td>${ idea.user.email }</td>
				<td>${ idea.getUsers().size() }</td>
				<td>
					<c:if test = "${ !idea.getUsers().contains(userObj) }">
						<form action = "/ideas/like/${ idea.id }" method = "POST">
							<input class="btn btn-md btn-success" type = "submit" value = "Like">
						</form>
					</c:if>
					<c:if test = "${ idea.getUsers().contains(userObj) }">
						<form action = "/ideas/unlike/${ idea.id }" method = "POST">
							<input class="btn btn-md btn-danger" type = "submit" value = "Unlike">
						</form>
					</c:if>
				</td>
			</tr>
		</c:forEach>
		
	</table>
	
	<form action = "/ideas/new" method = "get">
		<input class="btn btn-lg btn-primary" type = "submit" value = "Create An Idea">
	</form>
	</div>
	

</body>
</html>