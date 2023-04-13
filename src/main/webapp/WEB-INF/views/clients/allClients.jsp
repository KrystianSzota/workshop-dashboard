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
                                Wszyscy klienci
                            </div>
                            <div class="card-body">
                                <table class="greyGridTable">
                                    <thead>
                                    <tr>
                                        <th>Imię i nazwisko klienta</th>
                                        <th>Adres zamieszkania</th>
                                        <th>Numer telefonu</th>
                                        <th>Adres mailowy</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${clientModel}" var="client">
                                        <tr>
                                            <td>${client.firstName} ${client.lastName} </td>
                                            <td>${client.zipCode} ${client.city}, ${client.street} ${client.buildingNumber}/${client.apartment} </td>
                                            <td>${client.phoneNumber}</td>
                                            <td>${client.email}</td>
                                            <td><div class="col-md-auto"><form method="get" action='<c:url value="/editClient/${client.id}"/>'>
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
