<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/saldorecarga.css">
    <title>Recarga/Saldo</title>
</head>
<body>
    <div class="container">
        <div class="nav">
            <span id="title">☀ Balanced</span>
            <a href="<c:url value="dashbord"/>"><button>Home</button></a>
        </div>
        <div class="saldo">
            <h1>Saldo atual - R$<span>20,00</span></h1>
        </div>
        <h1 id="recarga">Fazer uma recarga</h1>
        <form  method="post" action="<c:url value="saldorecarga/inserirrecarga"/>">
                <input type="checkbox" name="comum" id="tipo-recarga-1">
                <label for="tipo-recarga">comum/avulsa</label><br>
                <input type="checkbox" id="tipo-recarga-2" name="diario">
                <label for="tipo-recarga-2">diária</label><br>
                <input type="checkbox" id="tipo-recarga-3" name="estudante/prof">
                <label for="tipo-recarga-3">estudante/professor</label><br>
                <input type="checkbox" id="tipo-recarga-4" name="mensal">
                <label for="tipo-recarga-4">mensal</label><br>
            <label for="valor-recarga">Insira o valor da recarga</label><br>
            <input name="inserirvalor"type="number" id="valor-recarga" min="5" max="100"><br>
            <input id="fazer-recarga" type="submit" value="Efetuar a recarga">
        <input id="limpar"type="reset" value="Limpar">
        </form>
       </div>
        
</body>
</html>