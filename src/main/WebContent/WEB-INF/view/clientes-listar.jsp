<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Clientes</h1>
	
	<button onclick="window.location.href='/ismac-libreria-matutino-web/clientes/findOne?opcion=1'; return false;"> Agregar</button>
	
	<table>
		<thead>
			<tr>
				<th>idCliente</th>
				<th>Cedula</th>
				<th>Nombre</th>
				<th>Apellido</th>
				<th>Direccion</th>
				<th>Telefono</th>
				<th>Correo</th>
				<th> Acciones</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${clientes}">
				<tr>
					<td>${item.idCliente}</td>
					<td>${item.cedula}</td>
					<td>${item.nombre}</td>
					<td>${item.apellido}</td>
					<td>${item.direccion}</td>
					<td>${item.telefono}</td>
					<td>${item.correo}</td>
					<td>
						<button onclick="window.location.href='/ismac-libreria-matutino-web/clientes/findOne?idCliente=${item.idCliente}&opcion=1'; return false;">Actualizar</button>
						<button onclick="window.location.href='/ismac-libreria-matutino-web/clientes/findOne?idCliente=${item.idCliente}&opcion=2'; return false;">Borrar</button>
					</td>
				</tr>
			</c:forEach>			
		</tbody>
	</table>
	
		

</body>
</html>