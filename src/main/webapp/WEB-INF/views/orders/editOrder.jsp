<%--
  Created by IntelliJ IDEA.
  User: krych
  Date: 04.04.2023
  Time: 18:38
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
            Edytuj zlecenie
          </div>
          <div class="card-body">
            <form method="post" action='<c:url value="/editOrder/${orderModel.id}"/>'>
              <a href='<c:url value="/previewOrder/${orderModel.id}"/>'>
                <i class="fas fa-arrow-left me-1"></i>
                Powrót do podglądu
              </a>
              <div class="row mb-3">
                <div class="col-md-6">
                  <label for="inputClientID">Klient</label>
                  <select class="form-select" id="inputClientID" name="clientModel" required="required">
                    <option value="${orderModel.clientModel.id}">${orderModel.clientModel.firstName} ${orderModel.clientModel.lastName}, ${orderModel.clientModel.city}, ${orderModel.clientModel.email}</option>
                    <c:forEach items="${clientModel}" var="client">
                      <option value="${client.id}">${client.firstName} ${client.lastName}, ${client.city}, ${client.email}</option>
                    </c:forEach>
                  </select>
                </div>
                <div class="col-md-6">
                  <label for="inputVehicleId">Pojazd</label>
                  <select class="form-select" id="inputVehicleId" name="vehicleModel" required="required">
                    <option value="${orderModel.vehicleModel.id}">${orderModel.vehicleModel.brand} ${orderModel.vehicleModel.model}, ${orderModel.vehicleModel.registrationNumber}</option>
                    <c:forEach items="${vehicleModel}" var="vehicle">
                      <option value="${vehicle.id}">${vehicle.brand} ${vehicle.model}, ${vehicle.registrationNumber}</option>
                    </c:forEach>
                  </select>
                </div>
              </div>
              <div class="row mb-3">
                <div class="col-md-2">
                  <label for="inputVehicleOdometerReading">Stan licznika</label>
                  <input class="form-control" id="inputVehicleOdometerReading" type="text" name="vehicleOdometerReading" required="required" value="${orderModel.vehicleOdometerReading}" />
                </div>
              </div>
                <div class="row mb-3">
                  <div class="col-md-6">
                    <label for="inputExtentOfRepairs">Zakres naprawy</label>
                    <input class="form-control" id="inputExtentOfRepairs" type="text" name="extentOfRepairs" required="required" value="${orderModel.extentOfRepairs}" />
                  </div>
                </div>
              <div class="mt-4 mb-0">
                <div class="d-grid"><input type="submit" class="btn btn-success"></div>
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
