<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="inc/header.jsp"/>
<!-- Page Content -->
<div class="container">

    <div class="row">
        <!-- Blog Entries Column -->
        <div class="col-md-8">
            <h1 class="page-header">
                <span class="glyphicon glyphicon-list-alt"></span> NewsLine
                <small>
                    <c:if test="${ param.category != null}">
                        <c:out value="${currCategory}"></c:out>
                    </c:if>
                    <c:if test="${ param.category == null }">
                       Simple example of news
                    </c:if>
                </small>
            </h1>

            <div class="timeOut">
            <c:if test="${ param.addMessage != null}">
                <div class="alert alert-success">
                    <div class="panel-title"><span class="glyphicon glyphicon-chevron-down"></span> <b><c:out value="${param.addMessage}"/></b></div>
                </div>
            </c:if>
            </div>

            <c:if test="${param.search != null}">
                <c:if test="${!param.search.equals('')}">
                <h4><em><p>Search result for : <c:out value="${param.search}"></c:out></p></em></h4>
                </c:if>
            </c:if>

            <c:if test="${empty headLines}">
                <p>There is no, any such news :(</p>
            </c:if>

            <c:forEach items="${headLines}" var="news">
                <h2>
                    <a href="${pageContext.request.contextPath}/news/${news.id}"><c:out value="${news.title}"/> </a>
                    <div class="pull-right">
                        <h4>
                        <a class="btn btn-default " href="${pageContext.request.contextPath}/?category=${news.category}"><span class="glyphicon glyphicon-th-list"></span> <c:out value="${news.category}"/></a>
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
                                        <div class="modal-body">
                                            Do you want to delete: <c:out value="${news.title}"/> ?
                                        </div>
                                        <div class="modal-footer">
                                            <button class="btn btn-default" type="button" data-dismiss="modal">Close</button>
                                            <a href="${pageContext.request.contextPath}/delete/${news.id}"> <button class="btn btn-primary" type="button">Delete</button></a>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </h4>
                    </div>
                </h2>
                <p><span class="glyphicon glyphicon-time"></span>
                    Posted on
                    <c:out value="${news.date.toLocaleString()}"/>
                </p>
                <hr>
                <a href="${pageContext.request.contextPath}/news/${news.id}"> <img class="img-responsive" src="http://placehold.it/900x300" alt=""></a>
                <hr>
                <p><c:out value="${news.shortDescription}"/></p>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/news/${news.id}">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>
                <hr>
            </c:forEach>
            <!-- Pager -->

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

<script></script>