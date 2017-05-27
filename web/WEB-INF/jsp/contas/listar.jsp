<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../header.jsp" %>

<h3>Contas</h3>
<hr/>
<a href="cadastrarConta" class="btn btn-success"><i class="glyphicon glyphicon-plus"></i>
    &nbsp;Adicionar Conta</a>
<hr/>
<table class="table table-bordered table-stripped">
    <tr>
        <th>Número</th>
        <th>Agência</th>
        <th>Saldo</th>
    </tr>
    <c:forEach items="${sessionScope.lcontas}" var="item" varStatus="loop">
        <tr>
            <td>${item.numero}</td>
            <td>${item.agencia}</td>
            <td><fmt:formatNumber value="${item.saldo}" type="currency"/>
            </td>
        </tr>
    </c:forEach>
</table>

<%@include file="../footer.jsp" %>