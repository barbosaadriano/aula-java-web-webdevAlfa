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
                <h1>Extrato</h1>
            </div>
            <div class="row">
                <div class="col-md-12">
                    Transações efetuadas
                    <table class="table table-bordered table-stripped">
                        <tr>
                            <td>Descrição</td>
                            <td>Tipo</td>
                            <td>Valor</td>
                        </tr>
                        <c:forEach items="${textrato}" var="item" >
                            <tr>
                                <td>${item.descricao}</td>
                                <td>${item.tipo}</td>
                                <td>${item.valor}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
