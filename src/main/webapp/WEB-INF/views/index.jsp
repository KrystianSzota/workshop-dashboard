<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="dynamic/css.jsp"%>
<%@include file="dynamic/navigationMain.jsp"%>
<div id="layoutSidenav">
    <%@include file="dynamic/sideMenu.jsp"%>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Wszystkie zlecenia
                            </div>
                            <div class="card-body">
                                <div class="row g-3">
                                    <form th:action="@{/}">
                                        Wyszukaj: <input type="text" name="keyword" id="keyword" size="50" th:th:value="${keyword}" required />

                                        <input type="submit" value="Szukaj" />

                                        <input type="button" value="Wyczyść" id="btnClear" onclick="clearSearch()" />
                                    </form>
                                </div>
                                <table class="greyGridTable">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Imię i nazwisko klienta</th>
                                        <th>Pojazd</th>
                                        <th>Numer rejestracyjny pojazdu</th>
                                        <th>Data rejestracji zlecenia</th>
                                        <th>Status zlecenia</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${orderModel}" var="order">
                                        <tr>
                                            <td>${order.id}</td>
                                            <td>${order.clientModel.firstName} ${order.clientModel.lastName}</td>
                                            <td>${order.vehicleModel.brand} ${order.vehicleModel.model}</td>
                                            <td>${order.vehicleModel.registrationNumber}</td>
                                            <td>${order.orderRegistrationDate}</td>
                                            <td>${order.status}</td>
                                            <td><div class="col-md-auto"><form method="get" action='<c:url value="/previewOrder/${order.id}"/>'>
                                                <button type="submit" class="btn btn-primary">Podgląd</button>
                                            </form></div></td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                <%@include file="dynamic/footer.jsp"%>
            </div>
        </div>
<%@include file="dynamic/javaScript.jsp"%>
    </body>
</html>
