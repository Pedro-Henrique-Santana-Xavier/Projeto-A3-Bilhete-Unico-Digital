<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/home.css">
    <title>Home</title>
</head>

<body>
    <div class="container">
        <div class="nav">
            <span id="title">☀ Balanced</span>
            <nav>
                <a href="<c:url value="saldorecarga"/>">Recarregar</a>
                <a href="<c:url value="home"/>">Sair</a>
            </nav>
            <a href="#"> <button>Bem vindo!</button></a>
        </div>
    </div>
    <div class="maintext">
        <div class="primarytext">
            Recarregue e consulte o saldo do seu Bilhete Virtual
        </div>
        <div class="secondtext">
            com um simples toque no seu celular
        </div>
        <div class="thirtext">
            Escolha entre tipo de bilhete, tipo de recarga e forma de pagamento
        </div>
    </div>
    <div class="guia">
        <span id="titulo-guia">Guias</span>
    </div>
    <div class="container-guia">
        <div class="borda">
            <div class="caixa">
                <div class="conteudo">
                    <h1>Recarga</h1>
                    <h3>Para fazer uma recarga basta 
                        clicar em qualquer lugar escrito recarga 
                        e então seguir as instruções</h3>
                </div>
            </div>
        </div>
        <div class="borda">
            <div class="caixa">
                <div class="conteudo">
                    <h1>Saldo</h1>
                    <h3>Para verificar seu saldo apenas clique em saldo no menu de navegação
                        e veja o valor atualizado</h3>
                </div>
            </div>
        </div>
    </div>
    <div class="contato">
        <h1>Contato</h1>
        <h3>Nos contate pelos seguintes meios</h3>
    </div>
    <div class="container-contato">
        <img src="Components/images/facebook.png" alt="facebook">
        <img src="Components/images/instagram.png" alt="intagram">
        <img src="Components/images/youtube.png" alt="youtube">
        <img id="email" src="Components/images/email.png" alt="email">
        <img id="linkedin" src="Components/images/linkedin.png" alt="linkedin">
    </div>
</body>

</html>