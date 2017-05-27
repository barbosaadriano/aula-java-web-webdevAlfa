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
            <form action="imprimirExtrato" method="POST">
                <fieldset>
                  
                    <div class="row"> 
                        <div class="col-md-2">
                            <button  class="btn btn-primary btn-block btn-lg" type="submit">Gerar extrato</button>
                        </div>
                      <div class="clearfix"></div>
                    </div>
                      <div class="row">
                        <div class="col-md-6">
                            <label>Conta: </label>
                            <select class="form-control" name="conta_id"> 
                                <c:forEach items="${sessionScope.contas}" var="item" varStatus="loop">
                                    <option value="${loop.index}">${item.numero}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    
                </fieldset>
                <hr/>
                <div class="row"> 
                    <div class="col-md-2">
                        <button  class="btn btn-primary btn-block btn-lg" type="submit">Gerar extrato</button>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </form>
        </div>
    </body>
</html>
