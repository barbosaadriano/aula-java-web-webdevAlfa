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
        <th>-</th>
    </tr>
    <c:forEach items="${sessionScope.lpessoas}" var="item" varStatus="loop">
    <tr>
        <td>${item.nome}</td>
        <td>${item.login}</td>
        <td><a href="editarPessoa/${loop.index}" class="btn btn-info">
                <i class="glyphicon glyphicon-edit"></i>
            </a></td>
    </tr>
    </c:forEach>
</table>

<%@include file="../footer.jsp" %>