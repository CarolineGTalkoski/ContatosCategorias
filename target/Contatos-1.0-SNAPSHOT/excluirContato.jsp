<%-- 
    Document   : excluirContato
    Created on : 7 de ago. de 2024, 16:39:56
    Author     : Aluno
--%>

<%@page import="com.mycompany.contatos.Contatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Excluindo Contato!</h1>
        
        <%
            
            int id = Integer.parseInt(request.getParameter("id"));
            Contatos contatos = new Contatos();
            
                     
            contatos.setId(id);
             
             boolean sucesso = contatos.deletar();

                if (sucesso) {
                out.println("Contato deletado com sucesso!");
                } else {
                
                
                out.println("Erro ao deletar contato.");
                }
                 
            %>
    </body>
</html>
