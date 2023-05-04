<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Student</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <style>
        .container {
            max-width: 500px;
            margin: 0 auto;
            padding: 30px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input.form-control {
            height: 40px;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
        }
        button.btn {
            height: 40px;
            font-size: 16px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
<div class="container">
    <spring:url value="/student/addStudent" var="addURL" />
    <h2>Add Student</h2>
    <form:form modelAttribute="studentForm" method="post" action="${addURL}" cssClass="form" >
        <form:hidden path="id"/>
        <div class="form-group">
            <label for="firstname">First Name</label>
            <form:input path="firstname" cssClass="form-control" id="firstname" />
        </div>
        <div class="form-group">
            <label for="lastname">Last Name</label>
            <form:input path="lastname" cssClass="form-control" id="lastname" />
        </div>
        <button type="submit" class="btn btn-success">Add Student</button>
    </form:form>
</div>
</body>
</html>
