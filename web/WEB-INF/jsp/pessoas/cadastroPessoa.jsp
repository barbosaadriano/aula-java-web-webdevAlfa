<%-- 
    Document   : cadastro
    Created on : 25/04/2017, 23:25:23
    Author     : Edson OliveiraJr <edson@din.uem.br> - www.din.uem.br/~smarty
--%>

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
                <h1>Dados pessoais</h1>
                <p>Preencha o fomulário abaixo</p>
            </div>

            <form action="salvarAlguem" method="post">
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
                            <label for="nome">Nome: </label>
                            <input class="form-control" type="text" name="nome">
                        </div>
                        <div class="col-md-4">
                            <label for="sobrenome">Sobrenome: </label>
                            <input class="form-control" type="text" name="sobrenome">
                        </div>
                        <div class="col-md-2">
                            <label>Nascimento: </label>
                            <input class="form-control" type="text" name="nascimento"> 
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label for="rg">RG: </label>
                            <input class="form-control" type="text" name="rg" size="13" maxlength="13"> 
                        </div>
                        <div class="col-md-4">
                            <label>CPF:</label>
                            <input class="form-control" type="text" name="cpf" size="9" maxlength="9">
                        </div>
                    </div>
                </fieldset>
                <hr/>
                <div class="jumbotron">
                    <h2>Dados de Endereço</h2>
                </div>
                <!-- ENDEREÇO -->
                <fieldset>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="rua">Rua:</label>
                            <input class="form-control" type="text" name="rua">
                        </div>
                        <div class="col-md-2">
                            <label for="numero">Numero:</label>
                            <input class="form-control" type="text" name="numero" size="4">
                        </div>
                        <div class="col-md-4">
                            <label for="bairro">Bairro: </label>
                            <input class="form-control" type="text" name="bairro">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <label for="estado">Estado:</label>
                            <select class="form-control" name="estado"> 
                                <option value="ac">Acre</option> 
                                <option value="al">Alagoas</option> 
                                <option value="am">Amazonas</option> 
                                <option value="ap">Amapá</option> 
                                <option value="ba">Bahia</option> 
                                <option value="ce">Ceará</option> 
                                <option value="df">Distrito Federal</option> 
                                <option value="es">Espírito Santo</option> 
                                <option value="go">Goiás</option> 
                                <option value="ma">Maranhão</option> 
                                <option value="mt">Mato Grosso</option> 
                                <option value="ms">Mato Grosso do Sul</option> 
                                <option value="mg">Minas Gerais</option> 
                                <option value="pa">Pará</option> 
                                <option value="pb">Paraíba</option> 
                                <option value="pr">Paraná</option> 
                                <option value="pe">Pernambuco</option> 
                                <option value="pi">Piauí</option> 
                                <option value="rj">Rio de Janeiro</option> 
                                <option value="rn">Rio Grande do Norte</option> 
                                <option value="ro">Rondônia</option> 
                                <option value="rs">Rio Grande do Sul</option> 
                                <option value="rr">Roraima</option> 
                                <option value="sc">Santa Catarina</option> 
                                <option value="se">Sergipe</option> 
                                <option value="sp">São Paulo</option> 
                                <option value="to">Tocantins</option> 
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="cidade">Cidade: </label>
                            <input class="form-control" type="text" name="cidade">
                        </div>
                        <div class="col-md-5">
                            <label for="cep">CEP: </label>
                            <input class="form-control" type="text" name="cep" size="5" maxlength="5">
                        </div>
                    </div>
                </fieldset>
                <hr/>
                <div class="jumbotron">
                    <h2>Dados de login</h2>
                </div>
                <fieldset>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="email">E-mail: </label>
                            <input class="form-control" type="text" name="email">
                        </div>
                        <div class="col-md-6">
                            <label for="imagem">Imagem de perfil:</label>
                            <input class="form-control" type="file" name="imagem" >
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <label for="login">Login de usuário: </label>
                            <input class="form-control" type="text" name="login">
                        </div>
                        <div class="col-md-3">
                            <label for="pass">Senha: </label>
                            <input class="form-control" type="password" name="senha">
                        </div>
                        <div class="col-md-3">
                            <label for="passconfirm">Confirme a senha: </label>
                            <input class="form-control" type="password" name="passconfirm">
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
