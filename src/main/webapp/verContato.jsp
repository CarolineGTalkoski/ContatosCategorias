<%-- 
    Document   : verContato
    Created on : 7 de ago. de 2024, 16:39:28
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
        <h1>Visualizando Contatos!</h1>
        
        <%
        String idS = request.getParameter("id");
        if (!idS.isEmpty()) {
        int id = Integer.parseInt(idS);
        List<Contatos> contatos = Contatos.getContatos(id);
        
        
        for (Contatos contato : contatos) { %>
        
        <div><b>Nome do Contato: </b><% out.print (contato.getNome()); %> <br><br></div>
        <div><b>Telefone: </b><% out.print (contato.getTelefone());%><br><br></div>
        <div><b>Idade: </b><% out.print (contato.getIdade()); %></div>
        
        <% }
        
            } else {
            out.print("Contato não encontrado");
            }
        
        %>
    </body>
</html>
