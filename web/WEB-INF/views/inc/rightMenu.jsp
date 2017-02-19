<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Blog Search Well -->
<div class="well">
    <h4>News Search</h4>
    <form action="${pageContext.request.contextPath}/" method="get">
    <div class="input-group">
            <input type="text" class="form-control" name="search" value="${param.search}"/>
        <span class="input-group-btn">
            <button class="btn btn-default" type="submit">
                <span class="glyphicon glyphicon-search"></span>
            </button>
        </span>
    </div>
    </form>
    <!-- /.input-group -->
</div>

<!-- Side Widget Well -->
<div class="well">
    <h4>You can add here <span class="glyphicon glyphicon-arrow-right"></span><a href="${pageContext.request.contextPath}/add"><button class="btn btn-success" type="button"><span class="glyphicon glyphicon-plus-sign"></span> Add new</button></a></h4>

</div>

<!-- Blog Categories Well -->
<div class="well">
    <h4>News Categories</h4>
    <div class="row">
        <div class="col-lg-6">
            <ul class="list-unstyled">
                <li><a href="${pageContext.request.contextPath}/">All news</a>
                </li>
                <c:forEach items="${categories}" var="categ">
                    <li><a href="${pageContext.request.contextPath}/?category=${categ}"><c:out value="${categ.toString()}"/></a>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <!-- /.row -->
</div>
