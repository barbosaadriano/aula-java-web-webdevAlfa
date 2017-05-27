<%@include file="../header.jsp" %>

<h3>Pessoas</h3>
<hr/>
<a href="novaPessoa" class="btn btn-success"><i class="glyphicon glyphicon-plus"></i>
    &nbsp;Adicionar Pessoa</a>
<hr/>
<table class="table table-bordered table-stripped">
    <tr>
        <th>Nome</th>
        <th>Login</th>
    </tr>
    <c:forEach items="${sessionScope.lpessoas}" var="item" varStatus="loop">
    <tr>
        <td>${item.nome}</td>
        <td>${item.login}</td>
    </tr>
    </c:forEach>
</table>

<%@include file="../footer.jsp" %>