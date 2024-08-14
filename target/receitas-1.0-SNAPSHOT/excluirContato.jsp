<%-- 
    Document   : excluirContato
    Created on : 8 de ago. de 2024, 16:18:57
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

    Contato contato = new Contato();
    Contato.setId(id);

    boolean sucesso = contato.deletar();
    
    if (sucesso) {
        out.println("Contato deletada com sucesso!");
    } else {
        out.println("Erro ao deletar contato.");
    }
%>
<p><a href="listaContatos,jsp">Voltar para lista de contatos.</a></p>
    </body>
</html>