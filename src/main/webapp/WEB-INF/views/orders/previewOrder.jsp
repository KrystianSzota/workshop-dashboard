<%--
  Created by IntelliJ IDEA.
  User: krych
  Date: 18.04.2023
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../dynamic/css.jsp"%>
<%@include file="../dynamic/navigationMain.jsp"%>
<div id="layoutSidenav">
  <%@include file="../dynamic/sideMenu.jsp"%>
  <div id="layoutSidenav_content">
    <main>
      <div class="container-fluid px-4">
        <div class="card mb-4">
          <div class="card-header">
            <i class="fas fa-table me-1"></i>
            Podgląd zlecenia
          </div>
          <div class="card-body">
            <form method="get" action='<c:url value="/previewOrder/${orderModel.id}"/>'>
              <a href='<c:url value="/"/>'>
                <i class="fas fa-arrow-left me-1"></i>
                Powrót
              </a>
                <div class="row mb-3">
                  <div class="col-8">
                    <h4>Zlecenie numer: ${orderModel.id}</h4>
                  </div>
                  <div class="col-1" id="status">status: ${orderModel.status}</div>
                  <div class="col-3">
                    <h4>Data rejestracji zlecenia: ${orderModel.orderRegistrationDate}</h4>
                  </div>
                </div>
                <div class="row mb-3">
                  <div class="col-4">
                    <b>Imię i nazwisko klienta:</b> ${orderModel.clientModel.firstName} ${orderModel.clientModel.lastName}
                  </div>
                  <div class="col-4">
                    <b>Numer rejestracyjny pojazdu:</b> ${orderModel.vehicleModel.registrationNumber}
                  </div>
                  <div class="col-4">
                    <b>Stan licznika pojazdu:</b> ${orderModel.vehicleOdometerReading}
                  </div>
                </div>
              <div class="row mb-3">
                <div class="col-3">
                  <b>Marka pojazdu:</b> ${orderModel.vehicleModel.brand}
                </div>
                <div class="col-3">
                  <b>Model pojazdu:</b> ${orderModel.vehicleModel.model}
                </div>
                <div class="col-3">
                  <b>Rocznik:</b> ${orderModel.vehicleModel.yearOfProduction}
                </div>
                <div class="col-3">
                  <b>Silnik:</b> ${orderModel.vehicleModel.capacity}
                </div>
              </div>
                <div class="col">
                  <b>Opis prac do wykonania:</b>
                </div>
                <div class="col">
                  ${orderModel.extentOfRepairs}
                </div>
              <div class="row mb-3">
                <div class="col-9"></div>
<c:if test="${orderModel.status!='ZAKONCZONE'}">
                <div class="col-1">
                  <a class="btn btn-primary" href='<c:url value="/editOrder/${orderModel.id}"/>' role="button" id="edit" >Edytuj zlecenie</a>
                </div>
</c:if>
                <div class="col-1">
                  <a class="btn btn-secondary" href='<c:url value="/"/>' role="button">Powrót do listy zleceń</a>
                </div>
                <div class="col-1">
<c:if test="${orderModel.status!='ZAKONCZONE'}">
                  <div class="wrapper">
                    <a class="btn btn-success" href='<c:url value="/previewOrder/done/${orderModel.id}"/>' role="button" id="done">
                    Zakończ zlecenie
                  </a></div>
</c:if>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </main>
    <%@include file="../dynamic/footer.jsp"%>
  </div>
</div>
<%@include file="../dynamic/javaScript.jsp"%>
</body>
</html>
