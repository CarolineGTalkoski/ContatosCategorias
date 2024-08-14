<%-- 
    Document   : cadastrarCategoria
    Created on : 14 de ago. de 2024, 16:01:41
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Cadastrar Categoria</title>
        
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Cadastrar Nova Categoria</h1>

    <form action="salvarCategoria.jsp" method="post">
        <fieldset>
            <legend>Informações da Categoria</legend>
            
            <label for="nome">Nome:</label>
            <input type="text" id="nome" name="nome" required="required" />
            <br/><br/>
            
            <input type="submit" value="Salvar" />
            <input type="reset" value="Limpar" />
        </fieldset>
    </form>

    
    </body>
</html>
