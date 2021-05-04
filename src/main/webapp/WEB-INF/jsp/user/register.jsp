<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp"%>
<div class="text-center">
<form class="" action="/register" method="post">
  <div class="container" style="max-width: 375px;min-height: 480px">
    <div class="row">
      <div class="col-12">
        <h1 class="h3 mb-3 font-weight-normal">Welcome</h1>
      </div>
    </div>
    <div class="row" style="padding-top: 32px">
      <div class="col-12">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Email" name="email" required autofocus>
          <div class="input-group-append">
            <span class="input-group-text" id="basic-addon2">@stgeorges.bc.ca</span>
          </div>
          <small id="emailHelp" class="form-text text-muted">Only support stgeorges.bc.ca email </small>
        </div>
      </div>
    </div>
    <div class="row" style="padding-top: 16px;text-align: left">
      <div class="col-12">
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
        <small id="inputPasswordHelp" class="form-text text-muted">Please enter a password with 4 letters or more</small>
      </div>
    </div>
    <div class="row" style="padding-top: 16px;text-align: left">
      <div class="col-12">
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputRePassword"  name="repassword" class="form-control" placeholder="Confirm Password" required>
        <small id="inputRePasswordHelp" class="form-text text-muted">Please re-enter the same password to confirm</small>
      </div>
    </div>
    <div class="row" style="padding-top: 16px;text-align: left">
          <div class="col-12">
            <label for="inputInvitationCode" class="sr-only">Ivitation Code</label>
            <input type="password" id="inputInvitationCode"  name="invitationCode" class="form-control" placeholder="Invitation code" required>
            <small id="inputInvitationCodeHelp" class="form-text text-muted">Please enter the invitation code</small>
          </div>
        </div>
    <div class="row" style="padding-top: 32px">
      <div class="col-6">
        <Button class="btn btn-lg btn-light" onclick="javascript:window.history.back();">Cancel</Button>
      </div>
      <div class="col-6">
        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
      </div>
    </div>
  </div>
</form>
</div>
<%@include file="../footer.jsp"%>
