<%-- 
    Document   : salvaContato
    Created on : 8 de ago. de 2024, 14:55:02
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
        
        <%
            
        
            String nome = request.getParameter("nome");
            String telefone = request.getParameter("telefone");
            String idadeParam = request.getParameter("idade");
            
            if (nome != null && telefone != null && idadeParam != null &&!nome.isEmpty() && !telefone.isEmpty() && !idadeParam.isEmpty()) {
            int idade = Integer.parseInt(idadeParam);
            Contatos contatos = new Contatos(nome, telefone, idade);
           
            
             boolean sucesso = contatos.salvar();

                if (sucesso) {
                out.println("Contato salvo com sucesso!");
                } else {
                out.println("Erro ao salvar contato.");
                }
            }     
            %>
    </body>
</html>
