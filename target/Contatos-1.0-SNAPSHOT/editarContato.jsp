<%-- 
    Document   : editarContato
    Created on : 7 de ago. de 2024, 16:39:43
    Author     : Aluno
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.contatos.Contatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Editando Contato!</h1>
        
        <%
        String idS = request.getParameter("id");
        if (!idS.isEmpty()) {
        int id = Integer.parseInt(idS);
        List<Contatos> contatos = Contatos.getContatos(id);
        
        
        for (Contatos contato : contatos) { %>
        
        <form action="atualizar.jsp" method="post">
            
            <input type="hidden" id="id" name="id" value="<% out.print (contato.getId()); %>"><br><br>
            Nome do Contato: <input type="text" id="nome" name="nome" required value="<% out.print (contato.getNome()); %>"<br><br><br>
            Telefone: <input type="text" id="telefone" name="telefone" required value="<% out.print (contato.getTelefone());%>"><br><br>
            Idade: <input type="number" id="idade" name="idade" required value="<% out.print (contato.getIdade()); %>"><br><br>
            
            <input type="submit" value="Salvar Contato">
        </form>
            <%  } }
             %>
    </body>
</html>
