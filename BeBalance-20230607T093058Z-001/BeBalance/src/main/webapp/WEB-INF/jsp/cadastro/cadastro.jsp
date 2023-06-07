<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/cadastro.css">
    <link rel="stylesheet" href="styles/fonts.css">
    <link rel="stylesheet" href="./Components/fontawesome/fontawesome-free-6.4.0-web/css/all.css">
    <title>Página de cadastro</title>
</head>

     

<body>
    <div class="container-cadastro">
        <div class="title">Cadastro</div>
        <c:forEach var="error" items="${errors}">
     ${error.message}<br />
</c:forEach>
        <form  method="post" action="<c:url value="cadastro/salvausuario"/>">
            <div class="user-details">
                <div class="input-box">
                    <span class="details">Nome completo</span>
                    <input name="usuario.nome" value="${usuario.nome}" type="text" placeholder="Insira seu nome" required>
                </div>
                <div class="input-box">
                    <span class="details">CPF</span>
                    <input name="usuario.cpf" value="${usuario.cpf}"type="text" placeholder="Insira seu CPF" required>
                </div>
                <div class="input-box">
                    <span class="details">Nº do bilhete único</span>
                    <input name="usuario.nbilhete"value="${usuario.nbilhete}" type="text" placeholder="Insira o nº do seu bilhete único" required>
                </div>
                <div class="input-box">
                    <span class="details">E-mail</span>
                    <input name="usuario.email"value="${usuario.email}"type="email" placeholder="Insira seu Email" required>
                </div>
                <div class="input-box">
                    <span class="details">Nº de Telefone</span>
                    <input name="usuario.telefone"value="${usuario.telefone}"type="text" placeholder="Insira seu telefone" required>
                </div>
                <div class="input-box">
                    <span class="details">Gênero</span>
                    <input name= "usuario.genero" value="${usuario.genero}"type="text" placeholder="Insira seu gênero" >
                </div>
                <div class="input-box">
                    <span class="details">Senha</span>
                    <input name="usuario.senha"type="password" placeholder="Crie uma senha" required>
                </div>
                <div class="input-box">
                    <span class="details">Confirmar senha</span>
                    <input name= "confirmaSenha" type="password" placeholder="Confirme sua senha" required>
                </div>
            </div>
            <div class="button">
                <input type="submit" value="Cadastrar">
            </div>
        </form>
    </div>
</body>

</html>