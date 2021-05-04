<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp" %>
<div class="row">
<button type="button" class="btn btn-default py-2" onclick="javascript:window.history.back();">《 Back</button>
  <c:if test="${isMyPost==true}">
      <a href="/post/edit/${post.id}"  class="btn btn-primary py-2 ml-2">Edit</a>
  </c:if>
  <c:if test="${isMyPost==true || isAdmin==true}">
      <a href="/post/delete/${post.id}"  class="btn btn-primary py-2 ml-2">Delete</a>
  </c:if>
</div>
<div class="container">
  <div class="row">
    <h1>${post.title}</h1>
  </div>
  <div class="row">
    <div class="col-xs-12 col-sm-8">
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="border:1px solid #cdcdcd">
        <ol class="carousel-indicators">
<c:forEach items="${post.pictureUrls}" var="item" varStatus="state">
          <li data-target="#carouselExampleIndicators" data-slide-to="${state.index}" class="${state.index==0?"active":""}"></li>
</c:forEach>
        </ol>
        <div class="carousel-inner">
          <c:forEach items="${post.pictureUrls}" var="item" varStatus="state">
            <div class="carousel-item ${state.index==0?"active":""}">
              <img src="${item}"
                   class="d-block w-100" alt="...">
            </div>
          </c:forEach>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>
    <div class="col-xs-12 col-sm-4">
      <div class="container">
        <div class="row">
          <h1>Price: ${post.price}</h1>
          <h5>Email: <a href="mailto:${post.contactEmail}">${post.contactEmail}</a></h5>
          <h5>Phone: <a href="tel:${post.contactPhone}">${post.contactPhone}</a></h5>
          <p>Published By: ${post.user.email} <br/>
            Created: ${post.createdDateText}<br/>
            Category: ${post.category}<br/>
            Status: ${post.status}<br/>
          </p>
        </div>
        <div class="row">
          <h5>Description: </h5>
          <pre>${post.description}</pre>
        </div>
      </div>
    </div>
  </div>
</div>
<%@include file="../footer.jsp" %>