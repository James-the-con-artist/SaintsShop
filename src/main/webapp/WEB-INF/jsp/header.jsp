<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>SgsMarket</title>
    <meta content="" name="description">
    <meta content="" name="keywords">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.4.0/font/bootstrap-icons.min.css"/>
    <link href="/assets/style.css" rel="stylesheet">
</head>

<body>
<header id="header">
    <nav class="navbar fixed-top  navbar-expand-lg" style="background-color: black">
        <div class="container">
            <a class="navbar-brand" href="/">Sgs Market</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation"
                    style="color: white">
                <i class="bi bi-three-dots"></i>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <%--        <li class="nav-item active">--%>
                    <%--          <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>--%>
                    <%--        </li>--%>
                    <%--        <li class="nav-item">--%>
                    <%--          <a class="nav-link" href="#">Link</a>--%>
                    <%--        </li>--%>
                    <%--        <li class="nav-item dropdown">--%>
                    <%--          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
                    <%--            Dropdown--%>
                    <%--          </a>--%>
                    <%--          <div class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
                    <%--            <a class="dropdown-item" href="#">Action</a>--%>
                    <%--            <a class="dropdown-item" href="#">Another action</a>--%>
                    <%--            <div class="dropdown-divider"></div>--%>
                    <%--            <a class="dropdown-item" href="#">Something else here</a>--%>
                    <%--          </div>--%>
                    <%--        </li>--%>
                    <%--        <li class="nav-item">--%>
                    <%--          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>--%>
                    <%--        </li>--%>
                </ul>
                <c:if test="${sessionScope.loginUser!=null}">
                     <a class="nav-link" href="<%=request.getContextPath()%>/post/myposts">My Posts</a>
                </c:if>
                <c:if test="${sessionScope.loginUser==null}">
                    <a class="nav-link" href="<%=request.getContextPath()%>/login">Login / Register</a>
                </c:if>
                <c:if test="${sessionScope.loginUser!=null}">
                    <a class="nav-link" href="<%=request.getContextPath()%>/logout">Logout</a>
                </c:if>
                <a class="btn btn-outline-success my-2 my-sm-0" type="submit" style="margin-right: 8px"
                   href="/post/edit">New Post
                </a>

                <form class="form-inline my-2 my-lg-0" action="<%=request.getContextPath()%>/post/list" method="get">
                    <input class="form-control" type="search" placeholder="Search" aria-label="Search" name="keyword"
                           style="width: auto;">
                    <button class="btn btn-outline-success my-2 my-sm-0 ml-2" type="submit" style="">Search
                    </button>
                </form>
            </div>
        </div>
    </nav>
</header>
<div class="container">
    <main id="main" style="padding-top: 88px;padding-bottom: 16px">
        <c:if test="${message!=null}">
        <div class="container">
            <div class="alert alert-primary" role="alert">
                    ${message}
            </div>
        </div>
        </c:if>

