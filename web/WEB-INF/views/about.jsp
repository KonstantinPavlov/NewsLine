<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="inc/header.jsp"/>
<!-- Page Content -->
<div class="container">

    <div class="row">
        <!-- Blog Entries Column -->
        <div class="col-md-12">
            <h1 class="page-header">
                <span class="glyphicon glyphicon-list-alt"></span> NewsLine
                <small>
                   Simple example of news
                </small>
            </h1>

            <div>
                <p>
                    Develop WEB-application, which can manage News on web-site.
                </p>
                <p>
                    Each news must contain title, description, issue date and category.Each category have only title, but can consist several news.
                    WEB-application must perform next functional capabilities:
                </p>
                <ul>

                    <li>showing list of news</li>
                    <li>aearching news</li>
                    <li>adding and updating news</li>
                    <li>deleting news</li>
                </ul>

            </div>

            <h3>You can read full description about project at <a href="https://github.com/KonstantinPavlov/NewsLine">GitHub</a> </h3>

            <!-- Pager -->

        </div>
        <!-- Blog Sidebar Widgets Column -->
        <div class="col-md-4">

        </div>
    </div>
    <!-- /.row -->
    <jsp:include page="inc/footer.jsp"/>
</div>
<!-- /.container -->
