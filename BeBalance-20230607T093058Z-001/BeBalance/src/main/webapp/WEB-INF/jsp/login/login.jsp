<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/login.css">
    <title>Login</title>
</head>
<body>
    <div class="container">
        <div class="title">Login</div>
        <form  method="post" action="<c:url value="login/validarlogin"/>">
            <div class="user-login">
                <div class="input-box">
                    <span class="details">E-mail</span>
                    <input name=validaremail type="email" placeholder="" required>
                </div>
                <div class="input-box">
                    <span class="details">Senha</span>
                    <input name="validarsenha" type="password" placeholder="" required>
                </div>
                <div class="cadastro">
                    <a href="<c:url value="cadastro"/>">Primeiro acesso? Clique aqui</a>
                </div>
            <div class="button">
                <button type="submit">Logar</button>
            </div>
            </div>
    </form>
    </div>
    
</body>
</html>