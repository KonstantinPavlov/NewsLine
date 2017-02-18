<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="inc/header.jsp"/>
<!-- Page Content -->
<div class="container">

    <div class="row">
        <!-- Blog Entries Column -->
        <div class="col-md-8">
            <h1 class="page-header">
                <span class="glyphicon glyphicon-list-alt"></span> NewsLine
                <small>Simple example of news</small>
            </h1>

            <div class="timeOut">
            <c:if test="${ param.addMessage != null}">
                <div class="alert alert-success">
                    <div class="panel-title"><span class="glyphicon glyphicon-chevron-down"></span> <b><c:out value="${param.addMessage}"/></b></div>
                </div>
            </c:if>
            </div>

            <c:forEach items="${headLines}" var="news">
                <h2>
                    <a href="#"><c:out value="${news.title}"/> </a>
                    <div class="pull-right">
                        <h4>
                        <a class="btn btn-success "><span class="glyphicon glyphicon-th-list"></span> <c:out value="${news.category}"/></a>
                        <a href="${pageContext.request.contextPath}/edit/${news.id}"><span class="glyphicon glyphicon-pencil"></span></a>
                        <a href="${pageContext.request.contextPath}/delete/${news.id}"><span class="glyphicon glyphicon-remove"></span></a>
                        </h4>
                    </div>
                </h2>
                <p><span class="glyphicon glyphicon-time"></span>
                    Posted on
                    <c:out value="${news.date.toLocaleString()}"/>
                </p>
                <hr>
                <img class="img-responsive" src="http://placehold.it/900x300" alt="">
                <hr>
                <p><c:out value="${news.shortDescription}"/></p>
                <a class="btn btn-primary" href="#">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>
                <hr>
            </c:forEach>
            <!-- Pager -->
            <ul class="pager">
                <li class="previous">
                    <a href="#">&larr; Older</a>
                </li>
                <li class="next">
                    <a href="#">Newer &rarr;</a>
                </li>
            </ul>
        </div>
        <!-- Blog Sidebar Widgets Column -->
        <div class="col-md-4">
            <jsp:include page="inc/rightMenu.jsp"/>
        </div>
    </div>
    <!-- /.row -->
    <jsp:include page="inc/footer.jsp"/>
</div>
<!-- /.container -->
<!--Fading script -->
<script type="text/javascript">
    setTimeout(function(){$('.timeOut').fadeOut('slow')},5000);
</script>