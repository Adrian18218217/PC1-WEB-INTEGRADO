
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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


    </head>

    <body>

        <header id="header">
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
                        <div class="col-sm-8">
                            <div class="shop-menu pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href="registrate.jsp"><i class="fa fa-user"></i>registrate</a></li>
                                    <li><a href="carrito.jsp"><i class="fa fa-shopping-cart"></i>carrito</a></li>
                                    <li><a id=btn-abrir-popup  href="#"><i class="fa fa-lock"></i>iniciar sesion</a></li>
                                    <li>
									<div class="contenedor">
									<div class="overlayy" id="overlayy">
										<div class="popup" id="popup">
											<a href="#" id="btn-cerrar-popup" class="btn-cerrar-popup"><i>x</i></a>
											<h3>BIENVENIDO</h3>
											<form action="validar.php" method="post">
												<div class="contenedor-inputs">
												<input type="text" placeholder="&#128272; Usuario" name="usuario">
												<input type="password" placeholder="&#128272; Constraseña" name="clave">
												</div>
												<input type="submit" class="btn btn-default" value="Ingresar">
                                                                                                <p>No tengo cuenta<a href="registrate.jsp" class="register"> Registrame</a></p>
											</form>
										</div>
									</div>
								</div> 
									</li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <div class="header-bottom"><!--header-bottom-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-9">
                            <div class="mainmenu pull-left">
                                <ul class="nav navbar-nav collapse navbar-collapse">
                                    <li><a href="index.jsp" class="active">Home</a></li>
                                    <li><a href="contacto.php">Contactanos</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>

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
                                    <div class="col-sm-6">
                                        <h1><span>VIVE</span>-GAMING</h1>
                                        <h2>En Su Mayor Nivel</h2>
                                        <p>Todo lo necesario lo encuantras aqui! </p>
                                        <button type="button" class="btn btn-default get">COMPRAR</button>
                                    </div>
                                    <div class="col-sm-6">
                                        <img src="images/home/escritoriogamer.jpg" class="girl img-responsive" alt="" />
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="col-sm-6">
                                        <h1><span>HOGAR</span>-TECNOLOGICO</h1>
                                        <h2>Llevate La Mejor Tecnologia Para Tu Hogar</h2>
                                        <p>Llevate los mejores Smart TV a los mejores Precios! </p>
                                        <button type="button" class="btn btn-default get">COMPRAR</button>
                                    </div>
                                    <div class="col-sm-6">
                                        <img src="images/home/OK.webp" class="girl img-responsive" alt="" />
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="col-sm-6">
                                        <h1><span>MONITOREA</span>-TU SALUD</h1>
                                        <h2>Con Lo Mejor En SMARTWATCHES</h2>
                                        <p>No te pierdas nuestras ofertas, SmartWatches con la mejor tecnologia!</p>
                                        <button type="button" class="btn btn-default get">COMPRAR</button>
                                    </div>
                                    <div class="col-sm-6">
                                        <img src="images/home/watches.jpg" class="girl img-responsive" alt="" />
                                    </div>
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


        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="left-sidebar">
                            <h2>CATEGORIA</h2>
                            <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="index.jsp">Todos</a></h4>
                                    </div>
                                </div>

                                <!--FILTRO-->

                            </div>

                            <div class="shipping text-center">
                                <img src="images/publicidad1.jpg" alt="" />
                            </div>
                            <div class="shipping text-center">
                                <img src="images/publicidad2.jpg" alt="" />
                            </div>


                        </div>
                    </div>
                    <div class="col-sm-9 padding-right">
                        <div class="features_items"><!--features_items-->
                            <h2 class="title text-center">LISTA DE PRODUCTOS</h2>
                            <%
                                Connection cnx = null;
                                Statement sta = null;
                                ResultSet rs = null;

                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    cnx = DriverManager.getConnection("jdbc:mysql://localhost/store?user=root&password=");
                                    sta = cnx.createStatement();
                                    rs = sta.executeQuery("select producto.imagen,producto.precio,producto.nombre ,producto.id_producto from producto");

                                    while (rs.next()) {
                            %>
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <div class="single-products">

                                        <div class="productinfo text-center">
                                            <img src="<%=rs.getString(1)%>" alt="">
                                            <h2><%=rs.getString(2)%></h2>
                                            <p><%=rs.getString(3)%></p>
                                            <a href="?id_producto=<%=rs.getString(4)%>"class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar</a>


                                        </div>
                                        <div class="product-overlay">
                                            <div class="overlay-content">
                                                <h2><%=rs.getString(2)%></h2>
                                                <p><%=rs.getString(3)%></p>
                                                <a href="?id_producto=<%=rs.getString(4)%>"class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar</a>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <%
                                    }
                                    if (request.getParameter("id_producto") != null) {
                                        int id_producto = Integer.parseInt(request.getParameter("id_producto"));
                                        int cantidad = 1;
                                        out.println(id_producto);
                                        try {

                                            sta.executeUpdate("insert into carrito values('" + id_producto + "','" + cantidad
                                                    + "','0')");
                                        } catch (Exception e) {
                                            out.println(e);
                                        }
                                    }
                                    sta.close();
                                    rs.close();
                                    cnx.close();
                                } catch (Exception e) {
                                    out.println(e);
                                }

                            %>     

                        </div><!--features_items-->

                    </div>
                </div>
            </div>
        </section>


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


        <script src="js/popup.js"></script>

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/price-range.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>