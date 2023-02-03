<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<h1>Create a project</h1>
<br>
<%--@elvariable id="project" type="projects"--%>
<form:form method="post" action="/projects/new" modelAttribute="project">

    <div class="form-group">
        <form:label path="projectName">Project name:</form:label>
        <form:input path="projectName" class="form-control"></form:input>
        <form:errors path="projectName" class="text-danger"></form:errors>
    </div>
    <div class="form-group">
        <form:label path="description">Project Description:</form:label>
        <form:input path="description" class="form-control"></form:input>
        <form:errors path="description" class="text-danger"></form:errors>
    </div>
    <div class="form-group">
        <form:label path="dueDate">Due date:</form:label>
        <form:input path="dueDate" class="form-control" type="date"></form:input>
        <form:errors path="dueDate" class="text-danger"></form:errors>
    </div>
    <button class="btn btn-info">Submit</button>
    <a href="/projects" class="btn btn-warning">Cancel</a>
</form:form>
</body>
</html>