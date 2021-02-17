<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp" %>
<h1>LIST PAGE</h1>
<a href="/post/edit/${postModel.id}" class="btn btn-primary">ADD</a>
<div class="container">
  <div class="row">
    <div class="col-6">ID</div>
    <div class="col-3">NAME</div>
    <div class="col-3"></div>
  </div>
<c:forEach items="${list}" var="postModel" varStatus="state">
  <div class="row">
    <div class="col-6">${postModel.id}</div>
    <div class="col-3">${postModel.name}</div>
    <div class="col-3"><a href="/post/view/${postModel.id}">View Detail</a></div>
  </div>
</c:forEach>
</div>
<%@include file="../footer.jsp" %>