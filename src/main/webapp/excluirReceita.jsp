<%-- 
    Document   : excluirReceita
    Created on : 7 de ago. de 2024, 15:57:20
    Author     : Aluno
--%>


<%@page import="com.mycompany.receitas.Receita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
    int id = Integer.parseInt (request.getParameter("id"));

    Receita receita = new Receita();
    receita.setId(id);

    boolean sucesso = receita.deletar();
    
    if (sucesso) {
        out.println("Receita deletada com sucesso!");
    } else {
        out.println("Erro ao deletar receita.");
    }
%>
<p><a href="listaReceitas,jsp">Voltar para lista de receitas.</a></p>
    </body>
</html>

