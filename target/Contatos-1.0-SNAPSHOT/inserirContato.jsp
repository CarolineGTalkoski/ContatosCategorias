<%-- 
    Document   : inserirContato
    Created on : 7 de ago. de 2024, 16:39:00
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Contatos!</h1>
        
        <form action="salvaContato.jsp" method="post">
            
        <label for="nome" class="form-label">
            Nome do contato:</label>
        <input type="text" id="nome" name="nome" 
               class="form-control"required><br><br>

        
        <label for="telefone" class="form-label">
            Telefone:</label>
        <input type="text" id="telefone" name="telefone" 
               class="form-control"required><br><br>
        
        
        <label for="idade" class="form-label">
            Idade:</label>
        <input type="number" id="idade" name="idade" 
               class="form-control"required><br><br>
        
        <label for="categoria" class="form-label">
            Categoria:</label>
        <select id="categoria" name="categoria" required>
            <option value="amigo">Amigo(a)</option>
            <option value="familia">Família</option>
            <option value="professor">Professor(a)</option>
            <option value="colega">Colega</option>
        </select> <br><br>
        
        
        <input type="submit" value="Enviar">
        
    </body>
</html>
