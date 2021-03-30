<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp"%>
<div class="text-center">
<form class="" action="/login" method="post">
  <div class="container" style="max-width: 320px;min-height: 480px">
    <div class="row">
      <div class="col-12">
        <h1 class="h3 mb-3 font-weight-normal">Please Login</h1>
      </div>
    </div>
    <div class="row" style="padding-top: 32px">
      <div class="col-12">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Email" name="email" required autofocus>
          <div class="input-group-append">
            <span class="input-group-text" id="basic-addon2">@stgeorges.bc.ca</span>
          </div>
          <small id="emailHelp" class="form-text text-muted">Only support stgeorges.bc.ca email</small>
        </div>
      </div>
    </div>
    <div class="row" style="padding-top: 16px">
      <div class="col-12">
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
      </div>
    </div>
    <div class="row" style="padding-top: 32px">
      <div class="col-6">
        <a class="btn btn-lg btn-light" href="<%=request.getContextPath()%>/register">Register</a>
      </div>
      <div class="col-6">
        <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
      </div>
    </div>
  </div>
</form>
</div>
<%@include file="../footer.jsp"%>
