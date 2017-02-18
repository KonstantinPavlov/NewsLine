<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="inc/header.jsp"/>
<!-- Page Content -->
<div class="container">

    <div class="row">


        <!-- Blog Entries Column -->
        <div class="col-md-8">

            <h1 class="page-header">
                <span class="glyphicon glyphicon-list-alt"></span> NewsLine
                <small>Add new news</small>
            </h1>
            <!-- First Blog Post -->


            <form:form id="headline" action="${pageContext.request.contextPath}/addNews" method="post" modelAttribute="headline" accept-charset="UTF-8">
                <fieldset>
                    <div class="form-group">
                        <label>Title</label>
                        <input class="form-control" name="title" id="title" placeholder="Title of news" type="text">
                    </div>
                    <div class="form-group">
                        <label>Category</label>
                        <select class="form-control" name="category" id="category">
                            <c:forEach items="${categories}" var="type">
                                <option value="${type}"> <c:out value="${type}"/></option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Short description</label>
                        <textarea class="form-control" name="shortDescription" id="shortDescription" placeholder="Short description of news" rows="2"></textarea>
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <textarea class="form-control" name="description" id="description" placeholder="Description of news" rows="10"></textarea>
                    </div>
                </fieldset>
                <div>
                    <button class="btn btn-primary signup" type="submit">Add</button>
                </div>
            </form:form>

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
