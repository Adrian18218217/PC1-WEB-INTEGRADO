
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Cart | E-Shopper</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">

        <link rel="shortcut icon" href="images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    </head><!--/head-->

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

                        <div class="header-bottom"><!--header-bottom-->
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-9">
                                        <div class="mainmenu pull-left">
                                            <ul class="nav navbar-nav collapse navbar-collapse">
                                                <li><a href="index.jsp" class="active">Home</a></li>
                                                <li><a href="contacto.html">Contactanos</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </header>

                        <section id="cart_items">
                            <div class="container">
                                <div class="table-responsive cart_info">
                                    <table class="table table-condensed">
                                        <thead>
                                            <tr class="cart_menu">
                                                <td class="image">Articulo</td>
                                                <td class="description">Descripcion</td>
                                                <td class="price">Precio</td>
                                                <td class="quantity">Cantidad</td>
                                                <td class="total">Total</td>
                                                <td class="total">Eliminar</td>
                                                <td></td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                Connection cnx = null;
                                                Statement sta = null;
                                                ResultSet rs = null;

                                                try {
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    cnx = DriverManager.getConnection("jdbc:mysql://localhost/store?user=root&password=");
                                                    sta = cnx.createStatement();
                                                    rs = sta.executeQuery("select producto.imagen,producto.descripcion,producto.precio,carrito.cantidad,carrito.cantidad*producto.precio,carrito.id_carrito from producto join carrito on producto.id_producto=carrito.id_carrito");

                                                    while (rs.next()) {
                                            %>
                                            <tr>
                                                <td class="cart_product"> <img src="<%=rs.getString(1)%>" ></td>
                                                <td class="cart_description"><%=rs.getString(2)%></td>
                                                <td class="cart_price"><%=rs.getString(3)%></td>
                                                <td class="cart_quantity"><%=rs.getString(4)%></td>
                                                <td class="cart_total"><%=rs.getString(5)%></td>
                                                <td> <a href="?id_carrito=<%=rs.getString(6)%>"class="cart_delete"><i class="fa fa-shopping-cart"></i> Eliminar</a></td>
                                            </tr>

                                               <%
                                }
                                
    if(request.getParameter("id_carrito")!=null){
int id_carrito=Integer.parseInt(request.getParameter("id_carrito"));

  try {
                    
                   sta.executeUpdate("delete from carrito where id_carrito='"+id_carrito+"'");

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
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </section> <!--/#cart_items-->

                        <section id="do_action">
                            <div class="container">
                                <div class="heading">
                                    <h3>¿Que te gustaria hacer despues?</h3>
                                    <p>Elija si tiene un código de descuento o puntos de recompensa que desea usar o si desea estimar el costo de envío.</p>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="chose_area">
                                            <ul class="user_option">
                                                <li>
                                                    <input type="checkbox">
                                                    <label>Usar codigo de cupon</label>
                                                </li>
                                                <li>
                                                    <input type="checkbox">
                                                    <label>Usar vale de regalo</label>
                                                </li>
                                            </ul>
                                            <ul class="user_info">
                                                <li class="single_field">
                                                    <label>Departamento:</label>
                                                    <select>
                                                        <option>Arequipa</option>
                                                        <option>Tacna</option>
                                                        <option>Ancash</option>
                                                        <option>Lima</option>
                                                        <option>Cusco</option>
                                                        <option>Puno</option>
                                                        <option>Trujillo</option>
                                                        <option>Ica</option>
                                                    </select>

                                                </li>

                                                <li class="single_field zip-field">
                                                    <label>Provincia:</label>
                                                    <input type="text">
                                                </li>

                                                <li class="single_field zip-field">
                                                    <label>Direccion:</label>
                                                    <input type="text">
                                                </li>
                                            </ul>
                                            <a class="btn btn-default check_out" href="">Continuar</a>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="total_area">
                                            <ul>
                                                <li>Sub Total <span>$59</span></li>
                                                <li>Impuesto <span>$2</span></li>
                                                <li>Costo de envio <span>Free</span></li>
                                                <li>Total <span>$61</span></li>
                                            </ul>
                                            <a class="btn btn-default check_out" href="">Continuar</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section><!--/#do_action-->


                        <footer id="footer"><!--Footer-->
                            <div class="footer-widget">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-sm-2">
                                            <div class="single-widget">
                                                <h2>SERVICIOS</h2>
                                                <ul class="nav nav-pills nav-stacked">
                                                    <li><a href="#">Mesa de Ayuda</a></li>
                                                    <li><a href="#">Contactanos</a></li>
                                                    <li><a href="#">Estado de Orden</a></li>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="col-sm-2">
                                            <div class="single-widget">
                                                <h2>Politicas</h2>
                                                <ul class="nav nav-pills nav-stacked">
                                                    <li><a href="#">Terminos de Uso</a></li>
                                                    <li><a href="#">Politica de Privacidad</a></li>
                                                    <li><a href="#">Politica de Reembolso</a></li>
                                                    <li><a href="#">Systema de Cobranza</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-sm-2">
                                            <div class="single-widget">
                                                <h2>Nosotros</h2>
                                                <ul class="nav nav-pills nav-stacked">
                                                    <li><a href="#">Informacion de la Empresa</a></li>
                                                    <li><a href="#">Carreras</a></li>
                                                    <li><a href="#">Ubicacion</a></li>
                                                    <li><a href="#">Derechos del Autor</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-sm-3 col-sm-offset-1">
                                            <div class="single-widget">
                                                <h2>SUGERENCIAS Y RECLAMOS</h2>
                                                <form action="#" class="searchform">
                                                    <input type="text" placeholder="Your email address" />
                                                    <button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
                                                </form>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>


                        </footer><!--/Footer-->



                        <script src="js/jquery.js"></script>
                        <script src="js/bootstrap.min.js"></script>
                        <script src="js/jquery.scrollUp.min.js"></script>
                        <script src="js/jquery.prettyPhoto.js"></script>
                        <script src="js/main.js"></script>
                        </body>
                        </html>