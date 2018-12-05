<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- Required meta tags-->
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="au theme template">
      <meta name="author" content="Hau Nguyen">
      <meta name="keywords" content="au theme template">
      <!-- Title Page-->
      <title>M�sicas</title>
      <!-- Fontfaces CSS-->
      <link href="css/font-face.css" rel="stylesheet" media="all">
      <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
      <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
      <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
      <!-- Bootstrap CSS-->
      <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">
      <!-- Vendor CSS-->
      <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
      <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
      <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
      <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
      <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
      <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
      <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
      <!-- Main CSS-->
      <link href="css/theme.css" rel="stylesheet" media="all">
   </head>
   <body class="animsition">
      <div class="page-wrapper">
         <!-- END HEADER MOBILE-->
         <!-- MENU SIDEBAR-->
         <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
               <a href="#">
               <img src="images/icon/logo1.png" alt="Cool Admin" />
               </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
               <nav class="navbar-sidebar">
                  <ul class="list-unstyled navbar__list">
                     <li class="active has-sub">
                        <a class="js-arrow" href="#">
                        <i class="fas fa-tachometer-alt"></i>M�sicas</a>
                     </li>
                     <li>
                        <a href="BloquearDesbloquearUsuario.jsp">
                        <i class="fas fa-table"></i>Bloquear / Desbloquear</a>
                     </li>
                  </ul>
               </nav>
            </div>
         </aside>
         <!-- END MENU SIDEBAR-->
         <!-- PAGE CONTAINER-->
         <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
               <div class="section__content section__content--p30">
                  <div class="container-fluid">
                     <div class="header-wrap">
                        <div class="header-button">
                           <div class="account-wrap">
                              <div class="account-item clearfix js-item-menu">
                                 <div class="image">
                                    <img src="images/icon/avatar-01.jpg" alt="John Doe" />
                                 </div>
                                 <div class="content">
                                    <p>Ol�, ${sessionScope.usuarioLogado.nome}</p>
									
                                 </div>
                                 <div class="account-dropdown js-dropdown">
                                    <div class="info clearfix">
                                       <div class="image">
                                          <a href="#">
                                          <img src="images/icon/avatar-01.jpg" alt="John Doe" />
                                          </a>
                                       </div>
                                       <div class="content">
                                          <h5 class="name">
                                             <a href="#">Ol�, ${sessionScope.usuarioLogado.nome}</a>
                                          </h5>
                                          <span class="email">Ol�, ${sessionScope.usuarioLogado.email}</span>
                                       </div>
                                    </div>
                                    <div class="account-dropdown__body">
                                       <div class="account-dropdown__item">
                                          <a href="#">
                                          <i class="zmdi zmdi-account"></i>Conta</a>
                                       </div>
                                       <div class="account-dropdown__item">
                                          <a href="#">
                                          <i class="zmdi zmdi-settings"></i>Configura��o</a>
                                       </div>
                                    </div>
                                    <div class="account-dropdown__footer">
                                       <a href="#">
                                       <i class="zmdi zmdi-power"></i>Logout</a>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </header>
            <!-- HEADER DESKTOP-->
            <!-- MAIN CONTENT-->
            <div class="main-content">
               <div class="section__content section__content--p30">
                  <h2 class="title-1 m-b-25">M�sicas adicionadas</h2>
                  <div class="table-responsive table--no-card m-b-40">
                     <table class="table table-borderless table-striped table-earning">
                        <thead>
                           <tr>
                              <th>ID</th>
                              <th>Nome</th>
                              <th class="text-right">Autor</th>
                              <th class="text-right">Emo��o</th>
                              <th class="text-right">M�sica</th>
                           </tr>
                        </thead>
                        <tbody>
                           <tr>
                              <td>100398</td>
                              <td>Breathing</td>
                              <td class="text-right">Ariana Grande</td>
                              <td class="text-right">Felicidade</td>
                              <td class="text-right">
									<div class="container-audio">
										<audio controls  loop autoplay>
											<source src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/9473/new_year_dubstep_minimix.ogg" type="audio/ogg">
										</audio>
									</div>
                              </td>
                           </tr>
                           
                        </tbody>
                     </table>
                  </div>
                  <div class="row">
                     <div class="col-md-12">
                        <div class="copyright">
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- END MAIN CONTENT-->
         <!-- END PAGE CONTAINER-->
      </div>
      </div>
      <!-- Jquery JS-->
      <script src="vendor/jquery-3.2.1.min.js"></script>
      <!-- Bootstrap JS-->
      <script src="vendor/bootstrap-4.1/popper.min.js"></script>
      <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
      <!-- Vendor JS       -->
      <script src="vendor/slick/slick.min.js"></script>
      <script src="vendor/wow/wow.min.js"></script>
      <script src="vendor/animsition/animsition.min.js"></script>
      <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
      <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
      <script src="vendor/counter-up/jquery.counterup.min.js"></script>
      <script src="vendor/circle-progress/circle-progress.min.js"></script>
      <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
      <script src="vendor/chartjs/Chart.bundle.min.js"></script>
      <script src="vendor/select2/select2.min.js"></script>
      <!-- Main JS-->
      <script src="js/main.js"></script>
   </body>
</html>
<!-- end document-->





A pagina AprovacaoMusica.jsp some 
A pagina HomeADM. jsp some tbm









