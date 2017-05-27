<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../header.jsp" %>
<div class="jumbotron">
    <h1>Lançamento</h1>
</div>
<div class="row">
    <div class="col-md-12">
        Transação efetuada
        Seu novo saldo é <fmt:formatNumber value="${sessionScope.conta.saldo}"
                          type="currency"/>
    </div>
</div>
<%@include file="../footer.jsp" %>