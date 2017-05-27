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
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Adriano Index</title>
        <%@include file="bootstrap.jsp" %>
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="inicio"><i class="glyphicon glyphicon-usd"></i>&nbsp; Movimentação Financeira</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a class="active" href="#">
                                Usuário Logado: 
                                ${sessionScope.usuarioLogado.nome}
                            </a>
                        </li>
                        <li>
                            <a href="encerrarSessao">Sair&nbsp;<i class="glyphicon glyphicon-log-out"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-3 col-md-2 sidebar">
                    <ul class="nav nav-sidebar">
                        <li>
                            <a href="cadastrarAlguem">
                                <i class="glyphicon glyphicon-user"></i> &nbsp;
                                Cadastro Pessoa</a>
                        </li>
                        <li>
                            <a href="listarContas">
                                <i class="glyphicon glyphicon-credit-card"></i>&nbsp;
                                Cadastro Conta</a>
                        </li>
                        <li>
                            <a href="movimentarConta">
                                <i class="glyphicon glyphicon-transfer"></i>&nbsp;
                                Movimentar Conta</a>
                        </li>
                        <li>
                            <a href="extrato">
                                <i class="glyphicon glyphicon-print"></i>&nbsp;
                                Extrato</a>
                        </li>
                    </ul>
                </div>
                <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">