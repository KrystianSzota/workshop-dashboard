<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="dynamic/css.jsp"%>
<%@include file="dynamic/navigationMain.jsp"%>
        <div id="layoutError">
            <div id="layoutError_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-6">
                                <div class="text-center mt-4">
                                    <img class="mb-4 img-error" src='<c:url value="/resources/assets/img/error-404-monochrome.svg"/>' />
                                    <p class="lead">Ten adres URL nie został odnaleziony na serwerze.</p>
                                    <a href='<c:url value="/"/>'>
                                        <i class="fas fa-arrow-left me-1"></i>
                                        Powrót do strony głównej
                                    </a>
                                </div>
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
