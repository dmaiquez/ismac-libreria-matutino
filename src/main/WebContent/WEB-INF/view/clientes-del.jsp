<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Clientes</h1>
	
	<form action="del" method="get">
		<input type="hidden" id="idCliente" name="idCliente" value="${cliente.idCliente}">
		<strong>¿Desea eliminar el dato?</strong>
		<br/>
		<button type="submit">Guardar</button>
		<button onclick="window.location.href='/ismac-libreria-matutino-web/clientes/findAll'; return false;">Cancelar</button>		
	</form>
	

</body>
</html>