<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<%--                                <table id="datatablesSimple">--%>
                                <table class="greyGridTable">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Imię i nazwisko klienta</th>
                                        <th>Numer rejestracyjny pojazdu</th>
                                        <th>Data rejestracji zlecenia</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${orderModel}" var="order">
                                        <tr>
                                            <td>${order.id}</td>
                                            <td>${order.clientModel.firstName} ${order.clientModel.lastName}</td>
                                            <td>${order.vehicleModel.registrationNumber}</td>
                                            <td>${order.orderRegistrationDate}</td>
                                            <td></td>
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
