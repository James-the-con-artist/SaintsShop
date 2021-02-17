<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp" %>
<h1>VIEW PAGE</h1>
<h2>ID: ${testModel.id}</h2>
<h2>NAME: ${testModel.name}</h2>
<button class="btn btn-default" onclick="javascript:window.history.back();">BACK</button>
<a href="/test/edit/${testModel.id}" class="btn btn-primary">EDIT</a>
<%@include file="../footer.jsp" %>