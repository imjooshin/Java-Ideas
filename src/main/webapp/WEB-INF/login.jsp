<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<!-- <link rel="stylesheet" type="text/css" href="/css/styles.css">
 -->

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">

<style>
        * {
        font-family: 'Do Hyeon', sans-serif;
        }
        .container {
            padding: 100px;
        }
        h1 {
        	text-align: center;
        }
        .box {
            margin: 0 auto;
            width: 370px;
            height: 380px;
            border: 1px solid gray;
            /* display: inline-block;
            vertical-align: top; */
            padding: 50px;
            border-radius: 10px;
        }
        .messages {
            color: red;
        }
    </style>
</head>
<body>
	
	<div class="container">
	<h1 class="h1 mb-3 font-weight-normal">Welcome to Ideas!</h1><br>
	<div class = "box">
		<h3 class="h3 mb-3 font-weight-normal">Login</h3>
		<form action="/users/login" method="POST" >
		
		<p>Email: <input class="form-control" type="text"  name="email" placeholder="Email" /></p>
		<p>Password: <input class="form-control" type="password" name="password" placeholder="Password" /></p>
		
		<c:if test="${loginError != null}" >
			<p class="messages">${loginError}</p>				
		</c:if>
		
		<input class="btn btn-lg btn-primary btn-block" type = "submit" value = "Login"/>
	</form>
	
	<a href = "/users/registration">Not a Member? Register</a>
	
	</div>
	</div>
</body>
</html>