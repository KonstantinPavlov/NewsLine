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
            <jsp:include page="inc/rightMenu.jsp"/>
        </div>

    </div>
    <!-- /.row -->
    <jsp:include page="inc/footer.jsp"/>
</div>
<!-- /.container -->
