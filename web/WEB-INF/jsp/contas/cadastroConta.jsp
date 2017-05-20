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
                <h1>Dados Conta</h1>
                <p>Preencha o fomulário abaixo</p>
            </div>

            <form action="salvarConta" method="POST">
                <fieldset>
                    <div class="row"> 
                        <div class="col-md-2">
                            <input  class="btn btn-primary btn-block btn-lg" type="submit">
                        </div>
                        <div class="col-md-2">
                            <input  class="btn btn-warning btn-block btn-lg" type="reset" value="Limpar">
                        </div><div class="clearfix"></div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="nome">Número: </label>
                            <input class="form-control" type="text" name="numero">
                        </div>
                        <div class="col-md-4">
                            <label for="sobrenome">Agencia: </label>
                            <input class="form-control" type="text" name="agencia">
                        </div>
                        <div class="col-md-2">
                            <label>Tipo: </label>
                            <select class="form-control" name="tipo"> 
                                <option value="P">Poupança</option> 
                                <option value="C">Corrente</option> 
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label>Titular: </label>
                            <select class="form-control" name="titular_id"> 
                                <c:forEach items="${sessionScope.pessoas}" var="item" varStatus="loop">
                                    <option value="${loop.index}">${item.nome}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label for="rg">Saldo: </label>
                            <input class="form-control" type="text" name="saldo" value="0.0" readonly="readonly"> 
                        </div><div class="clearfix"></div>
                    </div>
                </fieldset>
                <hr/>
                <div class="row"> 
                    <div class="col-md-2">
                        <input  class="btn btn-primary btn-block btn-lg" type="submit">
                    </div>
                    <div class="col-md-2">
                        <input  class="btn btn-warning btn-block btn-lg" type="reset" value="Limpar">
                    </div><div class="clearfix"></div>
                </div>
            </form>
        </div>
    </body>
</html>
