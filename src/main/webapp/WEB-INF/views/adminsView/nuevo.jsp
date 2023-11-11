<%--
  Created by IntelliJ IDEA.
  User: Erick
  Date: 4/11/2023
  Time: 01:13
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<html>
<head>
    <title>Nuevo empleado</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script><body>
<jsp:include page="/WEB-INF/views/adminsView/menu.jsp"/>
<div class="row">
    <h3>Nuevo empleado</h3>
</div>
<div class="row">
    <div class=" col-md-7">
        <f:form method="POST" action="create" modelAttribute="empleado">
            <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Campos requeridos</strong></div>

            <div class="form-group">
                <label for="nombresEmp">Nombres: </label>
                <div class="input-group">
                    <f:input path="nombresEmp" cssClass="form-control"/>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                </div>
            </div>
            <div class="form-group">
                <label for="apellidosEmp">Apellidos </label>
                <div class="input-group">
                    <f:input path="apellidosEmp" cssClass="form-control"/>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                </div>
            </div>
            <div class="form-group">
                <label for="telefonoEmp">Teléfono:</label>
                <div class="input-group">
                    <f:input path="telefonoEmp" cssClass="form-control"/>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                </div>
            </div>
            <div class="form-group">
                <label for="correo">Correo electrónico:</label>
                <div class="input-group">
                    <f:input path="correo" cssClass="form-control"/>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                </div>
            </div>
            <div class="form-group">
                <label for="duiEmp">DUI: </label>
                <div class="input-group">
                    <f:input path="duiEmp" cssClass="form-control"/>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                </div>
            </div>
            <div class="form-group">
                <label for="direccionEmp">Dirección de domicilio:</label>
                <div class="input-group">
                    <f:input path="direccionEmp" cssClass="form-control"/>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                </div>
            </div>
            <f:button class="btn btn-info">Guardar</f:button>
        </f:form>
    </div>
</div>
</body>
</html>
