<%-- 
    Document   : listarContato
    Created on : 7 de ago. de 2024, 16:39:15
    Author     : Aluno
--%>

<%@page import="com.mycompany.contatos.Contatos"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Contatos!</h1>
        
        <table border="1">
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Telefone</th>
            <th>Idade</th>
        </tr>
        <%
            List<Contatos> contatos = Contatos.getAllContatos();
            for (Contatos contato : contatos) {
        %>
        <tr>
            <td><%= contato.getId() %></td>
            <td><%= contato.getNome() %></td>
            <td><%= contato.getTelefone() %></td>
            <td><%= contato.getIdade() %></td>
            
            
            <td><a href="editarContato.jsp?id=<%= contato.getId()%>">Editar Contato</a></td>
            <td><a href="verContato.jsp?id=<%= contato.getId()%>">Ver Contato</a></td>
            <td><a href="excluirContato.jsp?id=<%= contato.getId()%>">Excluir Contato</a></td>
        </tr>
        <%
            }
        %>
    </table>
    </body>
</html>
