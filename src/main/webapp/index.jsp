<%-- 
    Document   : index
    Created on : 18 de jul. de 2024, 14:37:39
    Author     : Aluno
--%>

<%@page import="com.mycompany.objeto.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Informaçõe do Usuário :3</h1>
        <%
            // criar uma instância de classe Usuario diretamente na JSP
            Usuario usuario = new Usuario("João", 25);
        
// Exibir as informações do usuário
out.print("<p><strong>Nome:</strong> " + usuario.getNome () + "</p>");
out.print("<p><strong>Idade:</strong> " + usuario.getIdade () + "</p>");
out.print("<p><strong>Sexo:</strong> " + usuario.getSexo () + "</p>");
           
           
            usuario.setNome("Pedro");
            out.print("<p><strong>Informações Atualizadas:</strong> " + usuario.imprimir() + "</p>");
            
            usuario.setIdade (20);
            out.print(usuario.imprimir());
            
            usuario.setSexo("Masculino");
            
            %>
    </body>
</html>
