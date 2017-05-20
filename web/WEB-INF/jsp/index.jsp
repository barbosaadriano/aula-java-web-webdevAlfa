<%-- 
    Document   : index
    Created on : 06/05/2017, 13:20:30
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adriano Index</title>
        <%@include file="bootstrap.jsp" %>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <ul>
                        <li>
                            <a href="cadastrarAlguem">Cadastro Pessoa</a>
                        </li>
                        <li>
                            <a href="cadastrarConta">Cadastro Conta</a>
                        </li>
                        <li>
                            <a href="movimentarConta">Movimentar Conta</a>
                        </li>
                        <li>
                            <a href="imprimirExtrato">Extrato</a>
                        </li>
                        <li>
                            <a href="encerrarSessao">Sair</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
