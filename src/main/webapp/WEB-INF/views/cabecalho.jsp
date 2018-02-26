

<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>

<c:url value="/" var="contextPath" />

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="icon"
	href="//cdn.shopify.com/s/files/1/0155/7645/t/177/assets/favicon.ico?11981592617154272979"
	type="image/ico" />
<link href="https://plus.googlecom/108540024862647200608"
	rel="publisher" />
<title>Livros de Java, SOA, Android, iPhone, Ruby on Rails e
	muito mais - Casa do Código</title>
<link href="${contextPath}resources/css/cssbase-min.css"
	rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700'
	rel='stylesheet' />
<link href="${contextPath}resources/css/fonts.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="${contextPath}resources/css/fontello-ie7.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${contextPath}resources/css/fontello-embedded.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${contextPath}resources/css/fontello.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="${contextPath}resources/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="${contextPath}resources/css/layout-colors.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${contextPath}resources/css/responsive-style.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${contextPath}resources/css/guia-do-programador-style.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${contextPath}resources/css/produtos.css" rel="stylesheet"
	type="text/css" media="all" />
<link rel="canonical" href="http://www.casadocodigo.com.br/" />
<link href="${contextPath}resources/css/book-collection.css"
	rel="stylesheet" type="text/css" media="all" />
<link rel="canonical" href="http://www.casadocodigo.com.br/" />
</head>
<body>

	<header id="layout-header">
		<div class="clearfix container">
			<a href="${s:mvcUrl('HC#index').build() }" id="logo"> </a>
			<div id="header-content">
				<nav id="main-nav">

					<ul class="clearfix">
						<li><a href="${s:mvcUrl('CCC#itens').build()}" rel="nofollow">
								<s:message code="menu.carrinho"
									arguments="${carrinhoCompras.quantidade}" />
						</a></li>

						<li><a href="/pages/sobre-a-casa-do-codigo" rel="nofollow">
								<fmt:message key="menu.sobre" />
						</a></li>

						<li><a href="/pages/perguntas-frequentes" rel="nofollow">
								<fmt:message key="menu.perguntas" />
						</a></li>
						<li><a href="?locale=pt" rel="nofollow"> <fmt:message
									key="menu.pt" />
						</a></li>

						<li><a href="?locale=en" rel="nofollow"> <fmt:message
									key="menu.en" />
						</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#"><security:authentication
									property="principal.username" /></a></li>
					</ul>

				</nav>
			</div>
		</div>
	</header>
	<nav class="categories-nav">
		<ul class="container">
			<li class="category"><a href="${s:mvcUrl('HC#index').build() }"><fmt:message
						key="navegacao.categoria.home" /></a></li>
			<li class="category"><a href="/collections/livros-de-agile">
					<fmt:message key="navegacao.categoria.agile" />
			</a></li>
			<li class="category"><a href="/collections/livros-de-front-end">
					<fmt:message key="navegacao.categoria.front_end" />
			</a></li>
			<li class="category"><a href="/collections/livros-de-games">
					<fmt:message key="navegacao.categoria.games" />
			</a></li>
			<li class="category"><a href="/collections/livros-de-java">
					<fmt:message key="navegacao.categoria.java" />
			</a></li>
			<li class="category"><a href="/collections/livros-de-mobile">
					<fmt:message key="navegacao.categoria.mobile" />
			</a></li>
			<li class="category"><a
				href="/collections/livros-desenvolvimento-web"> <fmt:message
						key="navegacao.categoria.web" />
			</a></li>
			<li class="category"><a href="/collections/outros"> <fmt:message
						key="navegacao.categoria.outros" />
			</a></li>
		</ul>
	</nav>