<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../header.jsp" %>
<div class="jumbotron">
    <h1>Extrato</h1>
    <p>
        Transações efetuadas
    </p>
</div>
<div class="row">
    <div class="col-md-12">

        <table class="table table-bordered table-stripped">
            <tr>
                <th>Descrição</th>
                <th>Tipo</th>
                <th>Valor</th>
            </tr>
            <c:forEach items="${textrato}" var="item" >
                <tr 
                    <c:if test="${item.tipo=='E'}">
                        class="info"
                    </c:if>
                    <c:if test="${item.tipo=='S'}">
                        class="danger"
                    </c:if>
                    >
                    <td>${item.descricao}</td>
                    <td>
                        <c:if test="${item.tipo=='E'}">C</c:if>
                        <c:if test="${item.tipo=='S'}">D</c:if>
                        </td>
                        <td><fmt:formatNumber value="${item.valor}" type="currency"/></td>
                </tr>
            </c:forEach>
            <tr>
                <td colspan="2">Saldo atual</td>
                <td><fmt:formatNumber value="${contaa.saldo}" type="currency"/>
                </td>
            </tr>
        </table>
    </div>
</div>
<%@include file="../footer.jsp" %>