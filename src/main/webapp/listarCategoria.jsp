<%-- 
    Document   : listarCategoria
    Created on : 14 de ago. de 2024, 15:02:52
    Author     : Aluno
--%>

<%@page import="java.util.List"%>
<%@ page import="com.mycompany.contatos.Categoria" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Categorias</title>
</head>
<body>
    <h2>Lista de Categorias</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Editar</th>
            <th>Visualizar</th>
            <th>Excluir</th>
        </tr>
        <%
            List<Categoria> categorias = Categoria.getAllCategorias();
            for (Categoria categoria : categorias) {
        %>
        <tr>
            <td><%= categoria.getId() %></td>
            <td><%= categoria.getNome() %></td>
            <td><a href="editarCategoria.jsp?id=<%= categoria.getId() %>">Editar</a></td>
            <td><a href="verCategoria.jsp?id=<%= categoria.getId() %>">Ver</a></td>
            <td><a href="excluirCategoria.jsp?id=<%= categoria.getId() %>">Excluir</a></td>
        </tr>
        <%
            }
        %>
    </table>
    </body>
</html>
