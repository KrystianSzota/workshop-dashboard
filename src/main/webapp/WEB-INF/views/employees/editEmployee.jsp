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
            Edytuj pracownika
          </div>
          <div class="card-body">
            <form method="post" action='<c:url value="/editEmployee/${employeeModel.id}"/>'>
              <a href='<c:url value="/employees"/>'>
                <i class="fas fa-arrow-left me-1"></i>
                Powrót
              </a>
              <div class="row mb-3">
                <div class="col-md-6">
                  <div class="form-floating mb-3 mb-md-0">
                    <input class="form-control" id="inputFirstName" type="text" name="firstName" required="required" value="${employeeModel.firstName}" />
                    <label for="inputFirstName">Imię</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-floating">
                    <input class="form-control" id="inputLastName" type="text" name="lastName" required="required" value="${employeeModel.lastName}" />
                    <label for="inputLastName">Nazwisko</label>
                  </div>
                </div>
              </div>
              <div class="form-floating mb-3">
                <input class="form-control" id="inputEmail" type="email" name="email" required="required" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" value="${employeeModel.email}" />
                <label for="inputEmail">Adres email</label>
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


