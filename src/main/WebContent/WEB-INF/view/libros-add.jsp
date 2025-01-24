<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<!-- 		/**
	 * @param idLibro
	 * @param titulo
	 * @param editorial
	 * @param numPaginas
	 * @param edicion
	 * @param idioma
	 * @param fechaPublicacion
	 * @param descripcion
	 * @param tipoPasta
	 * @param iSBN
	 * @param numEjemplares
	 * @param portada
	 * @param presentacion
	 * @param precio
	 * @param categoria
	 * @param autor
	 */ -->
	
	<h1>Libros</h1>
	
	<form action="add" method="post">
	
		<input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}">
		Titulo
		<input type="text" id="titulo" name="titulo" value="${libro.titulo}">
		<br>
		Editorial
		<input type="text" id="editorial" name="editorial" value="${libro.editorial}">
		<br>
		Numero de paginas
		<input type="number" id="numPaginas" name="numPaginas" value="${libro.numPaginas}">
		<br>
		Edición
		<input type="text" id="edicion" name="edicion" value="${libro.edicion}">
		<br>
		Idioma
		<input type="text" id="idioma" name="idioma" value="${libro.idioma}">
		<br>
		Fecha de Publicación
		<input type="date" id="fechaPublicacion" name="fechaPublicacion" value="${libro.fechaPublicacion}">
		<br>
		Descripción
		<input type="text" id="descripcion" name="descripcion" value="${libro.descripcion}">
		<br>
		Tipo Pasta
		<input type="text" id="tipoPasta" name="tipoPasta" value="${libro.tipoPasta}">
		<br>		
		ISBN
		<input type="text" id="iSBN" name="iSBN" value="${libro.iSBN}">
		<br>
		Numero de Ejemplares
		<input type="number" id="numEjemplares" name="numEjemplares" value="${libro.numEjemplares}">
		<br>
		Portada
		<input type="text" id="portada" name="portada" value="${libro.portada}">
		<br>		
		Presentación
		<input type="text" id="presentacion" name="presentacion" value="${libro.presentacion}">
		<br>		
		Precio
		<input type="number" step="any" id="precio" name="precio" value="${libro.precio}">
		<br>		
		Categoria		
		<select id="idCategoria" name="idCategoria" >
			<c:forEach var="item" items="${categorias}">			
				<option id="" value="${item.idCategoria}">${item.categoria}</option>											
			</c:forEach>
		</select>				
		<br>				
		Autor
		<select id="idAutor" name="idAutor" >
			<c:forEach var="item" items="${autores}">			
				<option id="" value="${item.idAutor}">${item.nombre} ${item.apellido}</option>											
			</c:forEach>
		</select>				
		<br>
		
	
	</form>
	

</body>
</html>