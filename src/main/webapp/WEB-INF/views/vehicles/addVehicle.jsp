<%--
  Created by IntelliJ IDEA.
  User: krych
  Date: 04.04.2023
  Time: 19:09
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
            Dodaj nowy pojazd
          </div>
          <div class="card-body">
            <form method="post" action='<c:url value="/addVehicle"/>'>
              <div class="row mb-3">
                <div class="col-md-6">
<%--                  <div class="form-floating mb-3 mb-md-0">--%>
                    <label for="inputBrand">Marka</label>
                    <input class="form-control" id="inputBrand" type="text" name="brand" required="required" placeholder="Wprowadź markę" />
<%--                  </div>--%>
                </div>
                <div class="col-md-6">
<%--                  <div class="form-floating">--%>
                    <label for="inputModel">Model</label>
                    <input class="form-control" id="inputModel" type="text" name="model" required="required" placeholder="Wprowadź model" />
                  </div>
<%--                </div>--%>
              </div>
              <div class="row mb-3">
                <div class="col-md-4">
                    <label for="inputYearOfProduction">Rok produkcji</label>
                    <input class="form-control" id="inputYearOfProduction" type="text" name="yearOfProduction" required="required" placeholder="Wprowadź rok produkcji" />
                </div>
                <div class="col-md-4">
                    <label for="inputCapacity">Pojemność silnika</label>
                    <input class="form-control" id="inputCapacity" type="text" name="capacity" required="required" placeholder="Wprowadź pojemność silnika" />
                </div>
                <div class="col-md-4">
                    <label for="inputRegistrationNumber">Numer rejestracyjny pojazdu</label>
                    <input class="form-control" id="inputRegistrationNumber" type="text" name="registrationNumber" required="required" placeholder="Wprowadź numer rejestracyjny pojazdu" />
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


