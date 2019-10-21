<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Disciplinas</title>
</head>
<body>	
	<form name="disciplina" action="crudDisciplina.jsp" method="get">
	<table>
			<tr><td>Codigo </td><td><input type="text" name="codigo"></td>
			</tr>
			<tr><td> Descrição </td><td> <input type="text" name="desc" />
			</td></tr>
			<tr><td> Carga Horária </td><td> <input type="text" name="carga" />
			</td></tr>
			<tr> <td> <input type="submit" name="crud" value="Pesquisar"/> </td> </tr>	
			<tr> <td> <input type="submit" name="crud" value="Alterar"/> </td> </tr>
			<tr> <td> <input type="submit" name="crud" value="Inserir"/> </td> </tr>
			<tr> <td> <input type="submit" name="crud" value="Excluir"/> </td> </tr>	
		</table>
	</form>
</body>
</html>