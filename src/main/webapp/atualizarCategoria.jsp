<%-- 
    Document   : atualizarCategoria
    Created on : 14 de ago. de 2024, 15:04:02
    Author     : Aluno
--%>

<%@ page import="com.mycompany.contatos.Categoria" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualizar Categoria</title>
</head>
<body>
    <h2>Resultado da Atualização</h2>
    
    <%
        String idS = request.getParameter("id");
        String nome = request.getParameter("nome");

        if (idS != null && !idS.isEmpty()) {
            int id = Integer.parseInt(idS);
            Categoria categoria = new Categoria();
            categoria.setId(id);
            categoria.setNome(nome);

            boolean sucesso = categoria.atualizar();

            if (sucesso) {
                out.println("Categoria atualizada com sucesso!");
            } else {
                out.println("Erro ao atualizar categoria.");
            }
        } else {
            out.println("ID da categoria não fornecido.");
        }
    %>
    
    <p><a href="listarCategoria.jsp">Voltar para a lista de categorias</a></p>
    <p><a href="cadastrarCategoria.jsp">Cadastrar nova categoria</a></p>
    </body>
</html>
