<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>

<!-- <link rel="stylesheet" type="text/css" href="/css/styles.css">
<link rel="stylesheet" type="text/css" href="/css/editStyle.css"> -->

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
        .messages {
            color: red;
        }
    </style>
    
</head>
<body>
	<div class="container">
		<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
            <h1 class="my-0 mr-md-auto font-weight-heavy">Edit Idea</h1>
            <nav class="my-2 my-md-0 mr-md-3">
            	<a class="p-2" href="/ideas/${ idea.getId() }">Back</a>
            	<a class="p-2" href="/ideas">DashBoard</a>
            	<a class="p-2" href="/users/logout">Logout</a>
            </nav>
        </div>
	
	<div class = "box">
		<h2>Idea: ${ idea.getIdea() }</h2>
		<h3>Creator: ${ idea.getUser().firstName } ${ idea.getUser().lastName }</h3>
		<h4>Number Of Likes: ${ idea.getUsers().size() }</h4>
	</div>
	
	<hr/>
	
			<form:form method = "POST" action = "/ideas/edit/${ idea.id }" modelAttribute = "idea">
				<form:label path="idea"><h3>Idea:</h3></form:label>
				<form:input class="form-control" path="idea" id = "ideaEdited"></form:input>
				<c:if test = "errors">
					<form:errors path="idea" class = "messages"></form:errors>
				</c:if>
				
				<br>
				
				<input class="btn btn-lg btn-primary" type = "submit" value = "Edit Idea">
				
			</form:form>
			
			<form action = "/ideas/delete/${ idea.id }" method = "POST">
					<input type = "hidden" name = "_method" value = "delete">
					<input class="btn btn-lg btn-danger ml-3" type = "submit" value = "Delete">
				</form>
	</div>
</body>
</html>