<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="br.com.prog3.trabalho5pc3.rafaelpadilha.CrudDisciplina,
	java.util.List,
	java.util.ArrayList,
	br.com.prog3.trabalho5pc3.rafaelpadilha.Disciplina" %>
	<%String crud = request.getParameter("crud");
		if(crud.equals("Pesquisar")){
			List<Disciplina> lista = new ArrayList<>();
			CrudDisciplina cd = new CrudDisciplina();
			lista = cd.listarTodos();
			%>
			<h1> Listando todas as disciplinas </h1>
			<ul>
			
			<% for(Disciplina d : lista){%>	
					<li><%out.print(d.toString()); %></li>
			<% }%>
			</ul>
		<%}%>
	<% 
		if(crud.equals("Excluir")){
			String temp = request.getParameter("codigo");
			CrudDisciplina cd = new CrudDisciplina();
			int codigo = Integer.parseInt(temp);
			cd.excluir(codigo);
			%>
			<h1> Disciplina Excluida com sucesso </h1>
			
		<%}%>
		
		<% if(crud.equals("Alterar")){
			String temp = request.getParameter("codigo");
			String temp2 = request.getParameter("desc");
			String temp3 = request.getParameter("carga");
			int codigo = Integer.parseInt(temp);
			int carga = Integer.parseInt(temp3);
			
			Disciplina d = new Disciplina();
			d.setCodigo(codigo);
			d.setCargaHoraria(carga);
			d.setDescricao(temp2);
			
			CrudDisciplina cd = new CrudDisciplina();
			
			cd.alterar(d);
			%>
			<h1> Disciplina Alterada ou adicionada </h1>
			
		<%}%>
		
		<% if(crud.equals("Inserir")){
			String temp = request.getParameter("codigo");
			String temp2 = request.getParameter("desc");
			String temp3 = request.getParameter("carga");
			int codigo = Integer.parseInt(temp);
			int carga = Integer.parseInt(temp3);
			
			Disciplina d = new Disciplina();
			d.setCodigo(codigo);
			d.setCargaHoraria(carga);
			d.setDescricao(temp2);
			
			CrudDisciplina cd = new CrudDisciplina();
			
			cd.inserir(d);
			%>
			<h1> Disciplina Inserida com sucesso </h1>
			
		<%}%>
</body>
</html>