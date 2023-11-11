<%--
  Created by IntelliJ IDEA.
  User: Erick
  Date: 1/11/2023
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><html>
<head>
    <title>Gestión de Proveedores</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<body>
<jsp:include page="/WEB-INF/views/adminsView/menu.jsp"/>
<body>
<div class="container">
    <div class="row">
        <h3>Gestión de Proveedores</h3>
    </div>
    <div class="row">
        <div class="col-md-10">
        </div>
        <c:forEach var="elemento" items="${proveedores}">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img class="card-img-top" src="https://picsum.photos/200/200?random=${elemento.propietarioId}" alt="Imagen del elemento">
                    <div class="card-body">
                        <h5 class="card-title">${elemento.nombresProp} ${elemento.apellidosProp}</h5>
                        <p class="card-text">${elemento.propietarioId}</p>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Teléfono: ${elemento.telefonoProp}</li>
                        <li class="list-group-item">Estado:
                            <c:choose>
                                <c:when test="${elemento.estadoProp eq 'Activo'}">
                                    <span class="badge bg-success">${elemento.estadoProp}</span>
                                </c:when>
                                <c:otherwise>
                                    <span class="badge bg-danger">${elemento.estadoProp}</span>
                                </c:otherwise>
                            </c:choose>
                        </li>
                    </ul>
                    <div class="card-body">
                        <a href="${pageContext.request.contextPath}/Administrador/panel/proveedores/${elemento.propietarioId}" class="card-link">Ver detalles</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
