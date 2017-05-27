<%@include file="../header.jsp" %>
<div class="jumbotron">
    <h1>Lançamento</h1>
</div>
<form action="processarMovimento" method="POST">
    <fieldset>
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
        <div class="row">
            <div class="col-md-2">
                <label>Tipo: </label>
                <select class="form-control" name="tipo"> 
                    <option value="S">Saque</option> 
                    <option value="E">Deposito</option> 
                </select>
            </div>
            <div class="col-md-6">
                <label for="descricao">Descrição: </label>
                <input class="form-control" type="text" name="descricao">
            </div>
            <div class="col-md-4">
                <label for="valor">Valor: </label>
                <input class="form-control" type="text" name="valor">
            </div>

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
<%@include file="../footer.jsp" %>