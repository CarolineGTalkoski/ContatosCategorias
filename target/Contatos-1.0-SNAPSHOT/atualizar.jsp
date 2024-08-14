<%-- 
    Document   : atualizar
    Created on : 8 de ago. de 2024, 14:04:08
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
        <h1>Atualizando Contato!</h1>
        
        <%
            
            int id = Integer.parseInt(request.getParameter("id"));
            String nome = request.getParameter("nome");
            String telefone = request.getParameter("telefone");
            String idadeParam = request.getParameter("idade");
            
            if (nome != null && telefone != null && idadeParam != null && !nome.isEmpty() && !telefone.isEmpty() && !idadeParam.isEmpty()){
            int idade = Integer.parseInt(idadeParam);
            Contatos contatos = new Contatos(nome, telefone, idade);
            contatos.setId(id);
             
             boolean sucesso = contatos.atualizar();

                if (sucesso) {
                out.println("Contato atualizado com sucesso!");
                } else {
                
                
                out.println("Erro ao atualizar contato.");
                }
            }     
            %>
    </body>
</html>
