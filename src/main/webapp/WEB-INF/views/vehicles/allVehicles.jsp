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
                                Wszystkie pojazdy
                            </div>
                            <div class="card-body">
                                <table class="greyGridTable">
                                    <thead>
                                    <tr>
                                        <th>Marka</th>
                                        <th>Model</th>
                                        <th>Rok produkcji</th>
                                        <th>Pojemność</th>
                                        <th>Numer Rejestracyjny</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${vehicleModel}" var="vehicle">
                                        <tr>
                                            <td>${vehicle.brand}</td>
                                            <td>${vehicle.model}</td>
                                            <td>${vehicle.yearOfProduction}</td>
                                            <td>${vehicle.capacity}</td>
                                            <td>${vehicle.registrationNumber}</td>
                                            <td><div class="col-md-auto"><form method="get" action='<c:url value="/editVehicle/${vehicle.id}"/>'>
                                                <button type="submit" class="btn btn-primary">Edytuj</button>
                                            </form></div></td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
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
