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

                        <!--Modal for delete operation -->
                        <a data-toggle="modal" data-target="#modal${news.id}">
                            <span class="glyphicon glyphicon-remove"></span>
                        </a>

                        <div class="modal fade" id="modal${news.id}" tabindex="-1" role="dialog" aria-labelbody="mymodalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button class="close" data-dismiss="modal" aria-label="close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                        <h4 class="modal-title" id="mymodallabel"> Delete news</h4>
                                    </div>
                                    <h4>
                                    <div class="modal-body">
                                        Do you want to delete: <c:out value="${news.title}"/> ?
                                    </div>
                                    </h4>
                                    <div class="modal-footer">
                                        <button class="btn btn-default" type="button" data-dismiss="modal">Close</button>
                                        <a href="${pageContext.request.contextPath}/delete/${news.id}"> <button class="btn btn-primary" type="button">Delete</button></a>
                                    </div>
                                </div>

                            </div>
                        </div>
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
