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
            <!-- First Blog Post -->

            <c:if test="${ param.addMessage != null}">
                <div class="alert alert-success">
                    <div class="panel-title"><span class="glyphicon glyphicon-chevron-down"></span> <b><c:out value="${param.addMessage}"/></b></div>
                </div>
            </c:if>

            <c:forEach items="${headLines}" var="news">
                <h2>
                    <a href="#"><c:out value="${news.title}"/> </a><a class="btn btn-success pull-right"><span class="glyphicon glyphicon-th-list"></span> <c:out value="${news.category}"/></a>
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

            <!-- Blog Search Well -->
            <div class="well">
                <h4>News Search</h4>
                <div class="input-group">
                    <input type="text" class="form-control">
                    <span class="input-group-btn">
                            <button class="btn btn-default" type="button">
                                <span class="glyphicon glyphicon-search"></span>
                        </button>
                        </span>
                </div>
                <a href="${pageContext.request.contextPath}/add"> <button class="btn btn-default" type="button"> Add news</button></a>
                <!-- /.input-group -->
            </div>

            <!-- Blog Categories Well -->
            <div class="well">
                <h4>News Categories</h4>
                <div class="row">
                    <div class="col-lg-6">
                        <ul class="list-unstyled">
                            <c:forEach items="${categories}" var="categ">
                                <li><a href="#"><c:out value="${categ.toString()}"/></a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <!-- /.row -->
            </div>

            <!-- Side Widget Well -->
            <div class="well">
                <h4>Side Widget Well</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore, perspiciatis adipisci accusamus laudantium odit aliquam repellat tempore quos aspernatur vero.</p>
            </div>

        </div>

    </div>
    <!-- /.row -->
    <jsp:include page="inc/footer.jsp"/>
</div>
<!-- /.container -->
