<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-md-3 col-sm-1">
            <ul class="list-group">
                <li class="list-group-item">Uniforms</li>
                <li class="list-group-item">Instruments</li>
                <li class="list-group-item">Electronics</li>
                <li class="list-group-item">Books</li>
                <li class="list-group-item">Other</li>
            </ul>
        </div>
        <div class="col-md-9 col-sm-1">
            <div class="container">
                <div class="row">
                    <c:forEach items="${list}" var="postModel" varStatus="state">
                        <div class="col-md-3  col-sm-1" style="padding: 8px">
                            <a href="/post/view/${postModel.id}">
                                <div class="card" style="color: #333333">
                                    <img src="https://lejames.ca/sites/default/files/page/images/used_textbooks.gif"
                                         class="card-img-top"
                                         alt="...">
                                    <div class="card-body" style="padding: 4px;">
                                        <div>${postModel.name}</div>
                                        <div style="display: flex;justify-content: space-between;align-items: center">
                                            <span style="color: #CC0927;font-weight: 700">$135.99</span>
                                            <span style="color: #666666;font-size: 80%">11-20</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>