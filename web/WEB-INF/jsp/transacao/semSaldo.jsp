<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../bootstrap.jsp" %>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
                <h1>Lançamento</h1>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="alert alert-danger">
                        ${sessionScope.erro}
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
