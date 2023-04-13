<%--
  Created by IntelliJ IDEA.
  User: krych
  Date: 13.04.2023
  Time: 09:10
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
            Dodaj nowego klienta
          </div>
          <div class="card-body">
            <form method="post" action='<c:url value="/addClient"/>'>
              <div class="row mb-3">
                <div class="col-md-6">
                    <label for="inputFirstName">Imię</label>
                    <input class="form-control" id="inputFirstName" type="text" name="firstName" required="required" placeholder="Wprowadź imię" />
                </div>
                <div class="col-md-6">
                    <label for="inputLastName">Nazwisko</label>
                    <input class="form-control" id="inputLastName" type="text" name="lastName" required="required" placeholder="Wprowadź nazwisko" />
                  </div>
              </div>
              <div class="row mb-3">
                <div class="col-md-2">
                    <label for="inputZipCode">Kod pocztowy</label>
                    <input class="form-control" id="inputZipCode" type="text" name="zipCode" required="required" placeholder="Wprowadź kod pocztowy" />
                </div>
                <div class="col-md-3">
                    <label for="inputCity">Miasto</label>
                    <input class="form-control" id="inputCity" type="text" name="city" required="required" placeholder="Wprowadź nazwę miasta" />
                </div>
                <div class="col-md-3">
                    <label for="inputStreet">Ulica</label>
                    <input class="form-control" id="inputStreet" type="text" name="street" required="required" placeholder="Wprowadź nazwę ulicy" />
                </div>
                  <div class="col-md-2">
                      <label for="inputBuildingNumber">Numer budynku</label>
                      <input class="form-control" id="inputBuildingNumber" type="text" name="buildingNumber" required="required" placeholder="Wprowadź numer budynku" />
                  </div>
                  <div class="col-md-2">
                      <label for="inputApartment">Numer mieszkania</label>
                      <input class="form-control" id="inputApartment" type="text" name="apartment" placeholder="Wprowadź numer mieszkania" />
                  </div>
              </div>
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="inputPhoneNumber">Numer telefonu</label>
                        <input class="form-control" id="inputPhoneNumber" type="text" name="phoneNumber" required="required" placeholder="Wprowadź numer telefonu" />
                    </div>
                    <div class="col-md-6">
                        <label for="inputEmail">Adres e-mail</label>
                        <input class="form-control" id="inputEmail" type="text" name="email" placeholder="Wprowadź adres mailowy" />
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


