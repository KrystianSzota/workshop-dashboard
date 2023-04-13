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
                                Wszyscy pracownicy
                            </div>
                            <div class="card-body">
<%--                                <table id="datatablesSimple">--%>
                                <table class="greyGridTable">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Imię i nazwisko pracownika</th>
                                        <th>Adres mailowy</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${employeeModel}" var="employee">
                                        <tr>
                                            <td>${employee.id}</td>
                                            <td>${employee.firstName} ${employee.lastName}</td>
                                            <td>${employee.email}</td>
                                            <td><div class="wrapper"><form method="get" action='<c:url value="/employees/remove/${employee.id}"/>'>
                                                <button type="submit" class="btn btn-danger">Usuń</button>
                                            </form> <form method="get" action='<c:url value="/editEmployee/${employee.id}"/>'>
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
