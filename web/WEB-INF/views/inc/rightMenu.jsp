<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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