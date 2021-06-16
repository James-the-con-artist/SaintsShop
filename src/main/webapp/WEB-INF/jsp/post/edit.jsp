<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp" %>
<button type="button" class="btn btn-default py-2" onclick="javascript:window.history.back();">《 BACK</button>
<div class="container">
  <div class="row">
    <div class="col-12">
      <form action="/post/save" method="post" enctype="multipart/form-data" name="postForm">
        <input type="hidden" name="id" value="${post.id}"/>
        <div class="form-group">
          <label for="post.title">Title</label>
          <input type="text" class="form-control" id="post.title" name="title" value="${post.title}">
        </div>
        <div class="form-group">
          <label for="picture">Picture <input type="file" name="files" multiple="multiple"/></label>
          <small id="pictureHelp" class="form-text" style="color: #CC0927">Max file size is 10M </small>
          <div id="picture" class="row">
            <c:if test="${post.pictureUrl0!=null&&post.pictureUrl0.length()>0}">
              <div style="width: 64px;">
                <img src="${post.pictureUrl0}" style="width: 64px;min-height: 16px" id="imgPicture0"/><br/>
                <input type="hidden" name="pictureUrl0" value="${post.pictureUrl0}"/>
                <button type="button" class="btn  btn-sm" onclick="deletePicture(0)">Delete</button>
              </div>
            </c:if>
            <c:if test="${post.pictureUrl1!=null&&post.pictureUrl1.length()>0}">
              <div style="width: 64px;">
                <img src="${post.pictureUrl1}" style="width: 64px;min-height: 16px" id="imgPicture1"/><br/>
                <input type="hidden" name="pictureUrl1" value="${post.pictureUrl1}"/>
                <button type="button" class="btn  btn-sm" onclick="deletePicture(1)">Delete</button>
              </div>
            </c:if>
            <c:if test="${post.pictureUrl2!=null&&post.pictureUrl2.length()>0}">
              <div style="width: 64px;">
                <img src="${post.pictureUrl2}" style="width: 64px;min-height: 16px" id="imgPicture2"/><br/>
                <input type="hidden" name="pictureUrl2" value="${post.pictureUrl2}"/>
                <button type="button" class="btn  btn-sm" onclick="deletePicture(2)">Delete</button>
              </div>
            </c:if>
            <c:if test="${post.pictureUrl3!=null&&post.pictureUrl3.length()>0}">
              <div style="width: 64px;">
                <img src="${post.pictureUrl3}" style="width: 64px;min-height: 16px" id="imgPicture3"/><br/>
                <input type="hidden" name="pictureUrl3" value="${post.pictureUrl3}"/>
                <button type="button" class="btn  btn-sm" onclick="deletePicture(3)">Delete</button>
              </div>
            </c:if>
            <c:if test="${post.pictureUrl4!=null&&post.pictureUrl4.length()>0}">
              <div style="width: 64px;">
                <img src="${post.pictureUrl4}" style="width: 64px;min-height: 16px" id="imgPicture4"/><br/>
                <input type="hidden" name="pictureUrl4" value="${post.pictureUrl4}"/>
                <button type="button" class="btn  btn-sm" onclick="deletePicture(4)">Delete</button>
              </div>
            </c:if>
            <c:if test="${post.pictureUrl5!=null&&post.pictureUrl5.length()>0}">
              <div style="width: 64px;">
                <img src="${post.pictureUrl5}" style="width: 64px;min-height: 16px" id="imgPicture5"/><br/>
                <input type="hidden" name="pictureUrl5" value="${post.pictureUrl5}"/>
                <button type="button" class="btn  btn-sm" onclick="deletePicture(5)">Delete</button>
              </div>
            </c:if>
            <c:if test="${post.pictureUrl6!=null&&post.pictureUrl6.length()>0}">
              <div style="width: 64px;">
                <img src="${post.pictureUrl6}" style="width: 64px;min-height: 16px" id="imgPicture6"/><br/>
                <input type="hidden" name="pictureUrl6" value="${post.pictureUrl6}"/>
                <button type="button" class="btn  btn-sm" onclick="deletePicture(6)">Delete</button>
              </div>
            </c:if>
            <c:if test="${post.pictureUrl7!=null&&post.pictureUrl7.length()>0}">
              <div style="width: 64px;">
                <img src="${post.pictureUrl7}" style="width: 64px;min-height: 16px" id="imgPicture7"/><br/>
                <input type="hidden" name="pictureUrl7" value="${post.pictureUrl7}"/>
                <button type="button" class="btn  btn-sm" onclick="deletePicture(7)">Delete</button>
              </div>
            </c:if>
            <c:if test="${post.pictureUrl8!=null&&post.pictureUrl8.length()>0}">
              <div style="width: 64px;">
                <img src="${post.pictureUrl8}" style="width: 64px;min-height: 16px" id="imgPicture8"/><br/>
                <input type="hidden" name="pictureUrl8" value="${post.pictureUrl8}"/>
                <button type="button" class="btn  btn-sm" onclick="deletePicture(8)">Delete</button>
              </div>
            </c:if>
          </div>
        </div>
        <div class="form-group">
          <label for="post.description">Description</label>
          <textarea class="form-control" id="post.description" name="description"
                    rows="5">${post.description}</textarea>
        </div>
        <div class="form-group">
          <label for="Category">Category</label>
          <div id="Category" class="row">
            <div class="form-check ml-3">
              <input class="form-check-input" type="radio" name="category" id="Uniform"
                     value="Uniform" ${post.category=="Uniform"?"checked":""}>
              <label class="form-check-label" for="Uniform">Uniform</label>
            </div>
            <div class="form-check ml-3">
              <input class="form-check-input" type="radio" name="category" id="Books"
                     value="Books"  ${post.category=="Books"?"checked":""}>
              <label class="form-check-label" for="Books">Books</label>
            </div>
            <div class="form-check ml-3">
              <input class="form-check-input" type="radio" name="category" id="Electronics"
                     value="Electronics"  ${post.category=="Electronics"?"checked":""}>
              <label class="form-check-label" for="Electronics">Electronics</label>
            </div>
            <div class="form-check ml-3">
              <input class="form-check-input" type="radio" name="category" id="Sports"
                     value="Sports"  ${post.category=="Sports"?"checked":""}>
              <label class="form-check-label" for="Sports">Sports</label>
            </div>
            <div class="form-check ml-3">
              <input class="form-check-input" type="radio" name="category" id="Instruments"
                     value="Instruments"  ${post.category=="Instruments"?"checked":""}>
              <label class="form-check-label" for="Instruments">Instruments</label>
            </div>
            <div class="form-check ml-3">
              <input class="form-check-input" type="radio" name="category" id="Miscellaneous"
                     value="Miscellaneous"  ${post.category=="Miscellaneous"?"checked":""}>
              <label class="form-check-label" for="Miscellaneous">Miscellaneous</label>
            </div>
            <div class="form-check ml-3">
             <input class="form-check-input" type="radio" name="category" id="Wanted"
                     value="Wanted"  ${post.category=="Wanted"?"checked":""}>
             <label class="form-check-label" for="Wanted">Wanted</label>
            </div>
          </div>
        </div>
        <div class="form-group">
          <label for="post.price">Price</label>
          <input type="text" class="form-control" id="post.price" name="price" value="${post.price}" placeholder = "$"
                 style="max-width: 120px">
        </div>
        <div class="form-group">
          <label for="contactEmail">Contact Email</label>
          <input type="text" class="form-control" id="contactEmail" name="contactEmail" value="${post.contactEmail}" placeholder = "johnsmith@gmail.com"
                 style="max-width: 300px">
        </div>
        <div class="form-group">
          <label for="contactPhone">Contact Phone</label>
          <input type="text" class="form-control" id="contactPhone" name="contactPhone" value="${post.contactPhone}" placeholder = "777-888-9999"
                 style="max-width: 180px">
        </div>
        <div class="row">
          <div class="col-sm-2">
            <div class="form-check">
              <input class="form-check-input" type="radio" name="status" id="statusPublish"
                     value="Published" ${post.status=='Published'?"checked":""}>
              <label class="form-check-label" for="statusPublish">
                Publish
              </label>
            </div>
          </div>
          <div class=" col-sm-2">
            <div class="form-check ">
              <input class="form-check-input" type="radio" name="status" id="statusHidden"
                     value="Hidden"  ${post.status=='Hidden'?"checked":""}>
              <label class="form-check-label" for="statusHidden">
                Hide
              </label>
            </div>
          </div>
        </div>
        <div class="row mt-4">
          <button type="button" class="btn btn-default" onclick="javascript:window.history.back();">CANCEL</button>
          <button type="submit" class="btn btn-primary ml-5">SAVE</button>
        </div>
      </form>
    </div>
  </div>
</div>
<script type="application/javascript">
  function deletePicture(index) {
      $("input[name|='pictureUrl"+index+"']" ).val("");
      $("#imgPicture"+index).attr("src","");
  }
</script>
<%@include file="../footer.jsp" %>