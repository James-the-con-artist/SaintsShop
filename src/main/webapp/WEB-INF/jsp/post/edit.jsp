<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp" %>
<div class="container">
  <div class="row">
    <h1>EDIT PAGE</h1>
  </div>
  <div class="row">
      <div class="col-12">
    <form action="/post/save" method="post">
      <form>
        <div class="form-group">
          <label for="testMode.id">ID</label>
          <input type="text" class="form-control" id="testMode.id" name="id" value="${postModel.id}">
        </div>
        <div class="form-group">
          <label for="testMode.name">NAME</label>
          <input type="text" class="form-control" id="testMode.name" name="name"  value="${postModel.name}">
        </div>
        <button type="button" class="btn btn-default" onclick="javascript:window.history.back();">BACK</button>
        <button type="submit" class="btn btn-primary">SAVE</button>
      </form>
    </form>
      </div>
  </div>
</div>
<%@include file="../footer.jsp" %>