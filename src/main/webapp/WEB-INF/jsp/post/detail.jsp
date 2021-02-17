<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp" %>
<h1>Item Detail</h1>
<h2>NAME: ${postModel.name}</h2>
<button class="btn btn-default" onclick="javascript:window.history.back();">BACK</button>
<a href="/post/edit/${postModel.id}" class="btn btn-primary">EDIT</a>
<div class="row">
    <div class="col-md-6 col-sm-1">
        <ul class="leftBox">
            <li>
                <span class="title">Price:&nbsp;</span>
                <span class="content">$38900</span>
            </li>
            <li>
                <span class="title">Area:&nbsp;</span>
                <span class="content" style="word-wrap: break-word;word-break: normal;">Vancouver&nbsp;&nbsp;</span>
            </li>
            <li>
                <span class="title">Category:&nbsp;</span>
                <span class="content">
                    <h6><a href="https://www.vanpeople.com/c/list/183.html">Books</a></h6>
                </span>
            </li>
        </ul>
    </div>

    <div class="col-md-6 col-sm-1">
        <ul class="rightBox">
            <li>
                <span class="title">Contact:&nbsp;</span>
                <span class="content">Eric</span>
            </li>
            <li>
                <span class="title">Phone:&nbsp;</span>
                <span class="content tel">604-765-4356</span>
            </li>
            <li>
                <span class="title">Email:&nbsp;</span>
                <span class="email content">
						eri***@thebmwstore.ca&nbsp;&nbsp;
					</span>
            </li>

            <li>
                <span class="title">WeChat:</span>
                <span class="content">V110425131101</span>
            </li>
        </ul>
    </div>
</div>
<div class="container">
    <h3>Description</h3>
    <div class="adsContent" style="line-height: 200%;">
        ..Hello Everyone, it's a Great condition BC local 2017 BMW 340i xdrive, Premium Package Essential,
        Smartphone Connectivity Package, Low rate finance available, Call Eric @ 604-765-4356 for more
        information.<br>
        <br>
        we did 160 points safety inspection to make sure it's an great condition, carFax and inspection report
        available upon request.<br>
        DLR#30354; STK# P01089<br>
        Low finance or lease option available.<br>
        For detailed vehicle history or to schedule a test drive<br>
        please contact Eric @ 604-765-4356. Thank you.
    </div>
    <h3>Image</h3>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://www.vanpeople.com/c/uploadpic/202102/ee4ee50c9a2e90cf4f1cefa390b5dcd9.png"
                     class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="https://www.vanpeople.com/c/uploadpic/202102/c3a533a58f244b3344d6f86e37c6eabc.jpg"
                     class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="https://www.vanpeople.com/c/uploadpic/202102/a5d002ff1ddf64bd3834c6d5de3b8c9a.jpg"
                     class="d-block w-100" alt="...">
            </div>
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

<%@include file="../footer.jsp" %>