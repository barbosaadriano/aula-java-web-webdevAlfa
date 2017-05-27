<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../header.jsp" %>
<div class="jumbotron">
    <h1>Lan�amento</h1>
</div>
<div class="row">
    <div class="col-md-12">
        Transa��o efetuada
        Seu novo saldo � <fmt:formatNumber value="${sessionScope.conta.saldo}"
                          type="currency"/>
    </div>
</div>
<%@include file="../footer.jsp" %>