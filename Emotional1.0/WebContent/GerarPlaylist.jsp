<<<<<<< HEAD
!DOCTYPE HTML>
=======
<!DOCTYPE HTML>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> 
>>>>>>> Desenvolvimento-Branch
<html>
<head>
<title>Emotional | Home </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Mosaic Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style2.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.css" type='text/css' />
<!-- //lined-favicon -->
<link rel="shortcut icon" type="image/png" href="img/123.png"/>	
 <!-- Meters graphs -->
<script src="js/jquery-2.1.4.js"></script>


</head> 
    	 <!-- /w3layouts-agile -->
 <body class="sticky-header left-side-collapsed"  onload="initMap()">
    <section>
      <!-- left side start-->
		<div class="left-side sticky-left-side">

			<!--logo and iconic logo start-->
			<div class="logo">
				<h1><a href="MenuFRONT.jsp">Emotion<span>al</span></a></h1>
			</div>
			<div class="logo-icon text-center">
				<a href="Menu.jsp">E </a>
			</div>
 	 <!-- /w3l-agile -->
			<!--logo and iconic logo end-->
			<div class="left-side-inner">

				<!--sidebar nav start-->
					<ul class="nav nav-pills nav-stacked custom-nav">
						<li class="active"><a href="Menu.jsp"><i class="lnr lnr-home"></i><span>Inicial</span></a></li>
						<li><a href="Playlist24H.jsp"><i class="camera"></i> <span>UmDia</span></a></li>
						<li><a href="${pageContext.request.contextPath}/AdicionarAmigo.jsp"><i class="lnr lnr-users"></i> <span>Adicionar Amigo</span></a></li> 
						<c:set var="tipo" value="${sessionScope.usuarioLogado.tipoUsuario}"/>
						
						<li><a href="${pageContext.request.contextPath}/DetectarEmocao.jsp" data-toggle="modal"><i class="fa fa-th"></i><span>Detectar Emo��o</span></a></li>
            
            <c:if test = "${ tipo == 'M'}">
						<li><a href="${pageContext.request.contextPath}/EnviarMusica.jsp" data-toggle="modal"><i class="fa fa-th"></i><span>Enviar M�sica</span></a></li>
						</c:if>
						<li><a href="Musica.jsp"><i class="lnr lnr-music-note"></i> <span>M�sicas</span></a></li>						
						<li class="menu-list"><a href="#"><i class="lnr lnr-indent-increase"></i> <span>Playlists</span></a>  
							<ul class="sub-menu-list">
							    <li><a href="Playlist.jsp">Todas</a> </li>
								<li><a href="Playlist.jsp">Felicidade</a> </li>
								<li><a href="Playlist.jsp">Tristeza</a> </li>
								<li><a href="Playlist.jsp">Raiva</a> </li>
								<li><a href="Playlist.jsp">Neutralidade</a> </li>
								<li><a href="Playlist.jsp">Surpresa</a> </li>
							</ul>
						</li>
						<li class="menu-list"><a href="#"><i class="lnr lnr-heart"></i>  <span>Meus Favoritos</span></a> 
							<ul class="sub-menu-list">
								<li><a href="MeusFavoritos.jsp">Playlists</a></li>
							</ul>
						</li>
						<li class="menu-list"><a href="#"><i class="fa fa-thumb-tack"></i><span>Contato</span></a>
							<ul class="sub-menu-list">
							    <li><a href="FaleConosco.jsp">Fale Conosco</a> </li>
							    <li><a href="PerguntasFrequentes.jsp">Perguntas Frequentes</a> </li>
								<li><a href="Suporte.jsp">Suporte</a> </li>
							</ul>
						</li>     
					</ul>
				<!--sidebar nav end-->
			</div>
		</div>
 	 <!-- /w3l-agile -->
		<!-- left side end-->
		<!-- main content start-->
		<div class="main-content">
			<!-- header-starts -->
			<div class="header-section">
			<!--toggle button start-->
			<a class="toggle-btn  menu-collapsed"><i class="fa fa-bars"></i></a>
			<!--toggle button end-->
			<!--notification menu start -->
				<div class="menu-right">
					<div class="profile_details">		
						  <div class="col-md-4 serch-part">
								<div id="sb-search" class="sb-search">
									<form action="buscarMusica" method="get">

										<input class="sb-search-input" placeholder="Search" type="search" name="search" id="search">
										<input class="sb-search-submit" type="submit" value="">
										<span class="sb-icon-search"> </span>
									</form>
								</div>
							</div>
							  <!-- search-scripts -->
									<script src="js/classie.js"></script>
									<script src="js/uisearch.js"></script>
										<script>
											new UISearch( document.getElementById( 'sb-search' ) );
										</script>
									<!-- //search-scripts -->
											 <!---->
											  <div class="col-md-4 player">
													<div class="audio-player">
														<audio id="audio-player"  controls="controls">
														<source src="media/Blue Browne.ogg" type="audio/ogg"></source>
																<source src="media/Blue Browne.mp3" type="audio/mpeg"></source>
																<source src="media/Georgia.ogg" type="audio/ogg"></source>
																<source src="media/Georgia.mp3" type="audio/mpeg"></source></audio>
														</div>
												<!---->
												<script type="text/javascript">
													$(function(){
													  $('#audio-player').mediaelementplayer({
														alwaysShowControls: true,
														features: ['playpause','progress','volume'],
														audioVolume: 'horizontal',
														iPadUseNativeControls: true,
														iPhoneUseNativeControls: true,
														AndroidUseNativeControls: true
													});
												 });
												</script>
												<!--audio-->
													<link rel="stylesheet" type="text/css" media="all" href="css/audio.css">
													<script type="text/javascript" src="js/mediaelement-and-player.min.js"></script>
													<!---->


												<!--//-->
												<ul class="next-top">
													<li><a class="ar" href="#"> <img src="images/arrow.png" alt=""/></a></li>
													<li><a class="ar2" href="#"><img src="images/arrow2.png" alt=""/></i></a></li>
														
											 </ul>	
											</div>
											<div class="col-md-4 login-pop">
												<div id="loginpop"> <a id="loginButton"><span>Ol� ${sessionScope.usuarioLogado.nome} <i class="arrow glyphicon glyphicon-chevron-right"></i></span></a><a class="top-sign" href="${pageContext.request.contextPath}/logout.jsp"><i class="fa fa-sign-in"></i></a>
												</div>

											</div>
										<div class="clearfix"> </div>
								</div>
							<!-------->
						</div>
					<div class="clearfix"></div>
				</div>
  <div class="container" >
  <div class="content"> 

      <p>Ol�, ${sessionScope.usuarioLogado.nome}, a emo��o detectada para a sua foto foi: ${sentimento} </p>
      
      <div id="buscarMusica">

<h3>${mensagens.erros}</h3>

<p>Caso voc� queira tentar outra imagem, clique em Detectar Emocao. Caso queira gerar playlist baseada no seu humor, clique em Gerar Playlist! </p>
		
<form action = "${pageContext.request.contextPath}/DetectarEmocao.jsp">

 <input type="submit" value="Detectar Emocao" name="enviarEmocao"/> 
</form>
	<form name="gerarPlaylist"  action = "gerarPlaylist" method="get" enctype="text/plain" autocomplete="off">
	

			<input type="hidden" id="sentimento" name="sentimento" value="${sentimento}" >         
           	  
           <input type="text" required id="nomePlaylist" name="nomePlaylist"/> 
          <p> 
            <input type="submit" value="Gerar Playlist" name="gerarPlaylist"/> 
          </p>
           
		</form>
       
      </div>
    </div>
  </div>  
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.js"></script>
</body>
</html>