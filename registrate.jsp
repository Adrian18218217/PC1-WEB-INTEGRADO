<%-- 
    Document   : registrate
    Created on : 20-sep-2020, 13:02:22
    Author     : MitSuKy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="La mejor tienda para comprar smartphone, smartwatches, electrodomesticos, computadoras y toda  la tecnologia de tus sueños">
        <meta name="author" content="">
        <title>Tecnology | Store</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet"> 
        <!-- agregando estilos popup -->
        <link href="css/estilos-popup.css" rel="stylesheet"> 
        <link rel="shortcut icon" href="images/home/logo.png">
        <link rel="stylesheet" href="css/estilos.css">
    </head>

    <body>
        <header id="header"><!--header-->
            <div class="header_top">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="contactinfo">
                                <ul class="nav nav-pills">
                                    <li><a href="#"><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
                                    <li><a href="#"><i class="fa fa-envelope"></i> tecnologystore@gmail.com</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="social-icons pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href="https://web.facebook.com/Technology-store-106881234401058/"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="header-middle">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="logo pull-left">
                                <a href="index.jsp"><img src="images/home/logo.png" alt="" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="header-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-9">
                            <div class="mainmenu pull-left">
                                <ul class="nav navbar-nav collapse navbar-collapse">
                                    <li><a href="index.jsp" class="active">Home</a></li>
                                    <li><a href="#">Contactanos</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <section id="slider">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                                    <li data-target="#slider-carousel" data-slide-to="1"></li>
                                    <li data-target="#slider-carousel" data-slide-to="2"></li>
                                </ol>

                                <div class="carousel-inner">
                                    <div class="item active">
                                        <img src="https://www.infotec.com.pe/modules/ps_banner/img/708f64c9bf51d17239951361e9923f78.jpg" alt="">
                                    </div>
                                    <div class="item">
                                        <img src="https://www.infotec.com.pe/modules/ps_imageslider/images/83a02d78c59b67923d33afa7d97745f4bc17c71a_BANNER-WEB-3.1.jpg" alt="">
                                    </div>

                                    <div class="item">
                                        <img src="https://www.infotec.com.pe/modules/ps_imageslider/images/129993f7257752fa5c0e14107a72eb6be61a0428_BANNER-MONITORES-ASUS.jpg" alt="">
                                    </div>

                                </div>

                                <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                                    <i class="fa fa-angle-left"></i>
                                </a>
                                <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>

                        </div>
                    </div>
                </div>
            </section><!--/slider-->

        </header><!--/header-->
        <!--/FORMULARIO-->

        <%    String nombres = request.getParameter("nombres");
            String apellidos = request.getParameter("apellidos");
            String correo = request.getParameter("correo");
            String usuario = request.getParameter("usuario");
            String clave = request.getParameter("clave");
            String telefono = request.getParameter("telefono");

            if (nombres != null && apellidos != null && correo != null && usuario != null && clave != null && telefono != null) {
            Connection cnx = null;
                Statement sta = null;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    cnx = DriverManager.getConnection("jdbc:mysql://localhost/store?user=root&password=");
                    sta=cnx.createStatement();
                    sta.executeUpdate("insert into cliente values('" + nombres + "','" + apellidos
                            + "','" + correo + "','" + usuario + "','" + clave
                            + "','" + telefono + "','0')");
                    //request.getRequestDispatcher("index.jsp").forward(request, response);
                } catch (Exception e) {
                    out.println(e);
                }
               
                
            } 
        %>
        <form action="registrate.jsp" method="post" class="form-registrer" >
            <h2 class="form__titulo">REGISTRATE</h2>
            <div class="contenedor-inputs">
                <input type="text"  id="nombres" name="nombres" placeholder="Nombre" class="input-48" required>
                <input type="text"  id="apellidos" name="apellidos" placeholder="Apellidos" class="input-48" required>
                <input type="email"  id="correo" name="correo" placeholder="Correo" class="input-100" required>
                <input type="text" id="usuario"  name="usuario" placeholder="Usuario" class="input-48" required>
                <input type="password"  id="clave" name="clave" placeholder="Constraseña" class="input-48" required>
                <input type="text" id="telefono"  name="telefono" placeholder="Telefono"  class="input-100" required>
                <input type="submit" value="Registrar" class="btn-enviar">
            </div>
        </form>
       
    </body>

    <footer id="footer"><!--Footer-->
        <div class="footer-widget">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="single-widget">
                            <h2>SERVICIOS</h2>
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="#">Mesa de Ayuda</a></li>
                                <li><a href="#">Contactanos</a></li>
                                <li><a href="#">Estado de Orden</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="single-widget">
                            <h2>Politicas</h2>
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="#">Politica de Privacidad</a></li>
                                <li><a href="#">Politica de Reembolso</a></li>
                                <li><a href="#">Systema de Cobranza</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer><!--/Footer-->


    <script src="js/validar.js"></script>
    <script src="js/popup.js"></script>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/price-range.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</html>
