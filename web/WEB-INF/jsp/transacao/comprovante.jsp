<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../header.jsp" %>
<div class="jumbotron">
    <h1>Lançamento</h1>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="alert alert-success">
            <h1>Transação efetuada</h1>
            <h3>
                Seu novo saldo é <fmt:formatNumber value="${sessionScope.conta.saldo}"
                                  type="currency"/>
            </h3>
        </div>
    </div>
</div>
<%@include file="../footer.jsp" %>