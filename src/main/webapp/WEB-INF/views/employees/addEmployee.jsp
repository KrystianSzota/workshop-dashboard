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
            Dodaj nowego pracownika
          </div>
          <div class="card-body">
            <form method="post" action='<c:url value="/addEmployee"/>'>
              <div class="row mb-3">
                <div class="col-md-6">
                  <div class="form-floating mb-3 mb-md-0">
                    <input class="form-control" id="inputFirstName" type="text" name="firstName" required="required" placeholder="Wprowadź imię" />
                    <label for="inputFirstName">Imię</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-floating">
                    <input class="form-control" id="inputLastName" type="text" name="lastName" required="required" placeholder="Wprowadź nazwisko" />
                    <label for="inputLastName">Nazwisko</label>
                  </div>
                </div>
              </div>
              <div class="form-floating mb-3">
                <input class="form-control" id="inputEmail" type="email" name="email" required="required" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" placeholder="name@example.com" />
                <label for="inputEmail">Adres email</label>
              </div>
              <div class="row mb-3">
                <div class="col-md-6">
                  <div class="form-floating mb-3 mb-md-0">
                    <input class="form-control" id="inputPassword" type="password" name="password" required="required" oninput="check()" placeholder="Wprowadź hasło" />
                    <label for="inputPassword">Hasło</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-floating mb-3 mb-md-0">
                    <input class="form-control" id="inputPasswordConfirm" type="password" name="inputPasswordConfirm" required="required" oninput="check()" placeholder="Powtórz hasło"/>
                    <label for="inputPasswordConfirm">Powtórz hasło</label>
                  </div>
                </div>
              </div>
              <ul class="list-group">
                <li class="list-group-item">
                  <input class="form-check-input me-1" type="radio" name="role" value="ROLE_ADMIN" id="firstRadio">
                  Administrator
                </li>
                <li class="list-group-item">
                  <input class="form-check-input me-1" type="radio" name="role" value="ROLE_USER" id="secondRadio" checked>
                  Pracownik
                </li>
              </ul>
              <div class="mt-4 mb-0">
                <div class="d-grid"><input type="submit" onclick="matchPassword()" class="btn btn-success">Utwórz konto pracownika</div>
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


