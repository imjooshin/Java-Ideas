<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
<!-- <link rel="stylesheet" type="text/css" href="/css/styles.css"> -->

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
            min-height: 700px;
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
		<h3 class="h3 mb-3 font-weight-normal">Register</h3>
		<form:form action="/users/registration" method="POST" modelAttribute="user">
		<p><form:errors path="firstName" class = "messages"></form:errors></p>
		<p>
			<form:label path="firstName">First Name: </form:label>
			<form:input class="form-control" path="firstName"></form:input>
		</p>
		
		<p><form:errors path="lastName" class = "messages"></form:errors></p>
		<p>
			<form:label path="lastName">Last Name: </form:label>
			<form:input class="form-control" path="lastName"></form:input>
		</p>
		
		<c:if test="${emailMatchError != null}" >
			<p class="messages">${emailMatchError}</p>				
		</c:if>
		
		<p><form:errors path="email" class = "messages"></form:errors></p>
		<p>
			<form:label path="email">Email: </form:label>
			<form:input class="form-control" path="email"></form:input>
		</p>
		
		<c:if test="${passwordMatchError != null}" >
			<p class="messages">${passwordMatchError}</p>				
		</c:if>
		
		<p><form:errors path="password" class = "messages"></form:errors></p>
		<p>
			<form:label path="password">Password: </form:label>
			<form:input class="form-control" type="password" path="password"></form:input>
		</p>
		
		<p><form:errors path="confirm" class = "messages"></form:errors></p>
		<p>
			<form:label path="confirm">Confirm Password: </form:label>
			<form:input class="form-control" type="password" path="confirm"></form:input>
		</p>
		
		<input class="btn btn-lg btn-primary btn-block" type = "submit" value = "Register"/>
	</form:form>
	
	<a href = "/users/login">Have an account? Login</a>
	
	</div>
	</div>
</body>
</html>