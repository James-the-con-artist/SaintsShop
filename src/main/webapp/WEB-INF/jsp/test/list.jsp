<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp" %>
<h1>LIST PAGE</h1>
<a href="/test/edit/${testModel.id}" class="btn btn-primary">ADD</a>
<div class="container">
  <div class="row">
    <div class="col-6">ID</div>
    <div class="col-3">NAME</div>
    <div class="col-3"></div>
  </div>
<c:forEach items="${list}" var="testModel" varStatus="state">
  <div class="row">
    <div class="col-6">${testModel.id}</div>
    <div class="col-3">${testModel.name}</div>
    <div class="col-3"><a href="/test/view/${testModel.id}">View Detail</a></div>
  </div>
</c:forEach>
</div>
<%@include file="../footer.jsp" %>