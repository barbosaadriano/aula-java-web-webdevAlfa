<%-- 
    Document   : form
    Created on : 20/05/2017, 13:59:23
    Author     : Administrador
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Login</title>
        <%@include file="../bootstrap.jsp" %>
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <form action="validarLogin" method="POST" class="form-signin">
                        <h2 class="form-signin-heading">Login</h2>
                        <label for="login" class="sr-only">Login</label>
                        <input type="text" id="login" class="form-control" name="login" placeholder="Login" required autofocus>
                        <label for="senha" class="sr-only">Senha</label>
                        <input type="password" id="senha" class="form-control" name="senha" placeholder="Senha" required>
                        <hr/>
                        <button class="btn btn-lg btn-primary btn-block" type="submit">Logar</button>
                    </form>
                    <hr/>
                    <div class="alert alert-danger">
                        ${sessionScope.erro}
                    </div>
                </div>
            </div>

        </div> <!-- /container -->    
    </body>
</html>
