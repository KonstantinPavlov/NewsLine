<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="inc/header.jsp"/>
<!-- Page Content -->
<div class="container">

    <div class="row">
        <!-- Blog Entries Column -->
        <div class="col-md-8">
            <h1 class="page-header">
                <span class="glyphicon glyphicon-list-alt"></span> NewsLine
                <small>Full description of news</small>
            </h1>
               <a href="${pageContext.request.contextPath}/">Back to all news</a>
            <hr>
                    <h2 href="#"><span class="glyphicon glyphicon-tasks"></span> <c:out value="${news.title}"/>
                        <a href="${pageContext.request.contextPath}/edit/${news.id}"><span class="glyphicon glyphicon-pencil"></span></a>
                        <a href="${pageContext.request.contextPath}/delete/${news.id}"><span class="glyphicon glyphicon-remove"></span></a>
                    </h2>
                    <h3>
                        <span class="glyphicon glyphicon-th-list"></span> <c:out value="${news.category}"/>
                    </h3>

                <p><span class="glyphicon glyphicon-time"></span>
                    Posted on
                    <c:out value="${news.date.toLocaleString()}"/>
                </p>
                <hr>
                <img class="img-responsive" src="http://placehold.it/900x300" alt="">
                <hr>
                <p><c:out value="${news.description}"/></p>
                <hr>
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
