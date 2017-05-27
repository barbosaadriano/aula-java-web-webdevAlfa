<%@include file="../header.jsp" %>
<div class="jumbotron">
    <h1>Lançamento</h1>
</div>
<form action="imprimirExtrato" method="POST">
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

    </fieldset>
    <hr/>
    <div class="row"> 
        <div class="col-md-3">
            <button  class="btn btn-primary btn-block btn-lg" type="submit">Gerar extrato
                <i class="glyphicon glyphicon-print"></i>
            </button>
        </div>
        <div class="clearfix"></div>
    </div>
</form>
<%@include file="../footer.jsp" %>