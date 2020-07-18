<?php require 'config.php'; ?>
<html>
	<head>
		<meta charset="utf-8" >
		<meta name"viewport" content="width=device-width,initial-scale=1,shrink-to-fit-no"/>
		<meta name="description" content="Publicidade, marketing e propaganda na internet. Divulgue anúncios grátis e ganhe muitas visitas em seu site. 
										Vender mais e ainda divulgar sua empresa com classificados grátis você só tem a ganhar com seu negócio." /> 
		<meta name="keywords" content="anuncios, propaganda, vender, classificados, vendas, grátis, publicidade, classificado, 
										divulgação, publicitario, divulgar, anuncia, carros, internet, gratuitos, classificado, 
										motos, google, vendas online, veiculos, site, imoveis, vende mais, blog, produtos, de graça" /> 
		<title>Classificados</title>
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/css/style.css" />
		<script type="text/javascript" src="assets/js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="assets/js/jquery.min.js"></script>
		<script type="text/javascript" src="assets/js/bootstrap.bundle.min.js"></script>
		<script type="text/javascript" src="assets/js/script.js"></script>
			
	</head>
	<body>
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="./" class="navbar-brand">Classificados</a>
				</div>
				<ul class="nav navbar-nav navbar-right"> 
					<?php if(isset($_SESSION['cLogin'])  && !empty($_SESSION['cLogin'])): ?>
						<li><a href="meus-anuncios.php">Meus Anúncios</a></li>
						<li><a href="sair.php">Sair</a></li>
					<?php else: ?>
						<li><a href="cadastre-se.php">Cadastre-se</a></li>
						<li><a href="login.php">Login</a></li>
					<?php endif; ?>
				</ul>	
			</div>
		</nav>