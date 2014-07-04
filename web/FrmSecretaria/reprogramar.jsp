<%@page import="BEANS.Bfecha"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DAL.cConexion"%>
<%@page import="java.sql.Connection"%>
<%@page import="BAL.DatoCita"%>
<%@page import="BAL.Ccita"%>
<!DOCTYPE HTML>
<%@include file="/WEB-INF/jspf/validar.jspf" %>
<%@page language="java" session="true" errorPage="../WEB-INF/jspf/ErrorPage.jsp"   %>
<html>
    <head>
        <meta charset="utf-8">
        <title>Cl�nica Nazareth</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Zaid Archila">
        <link href="../scripts/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="../scripts/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">

        <!-- Icons -->
        <link href="../scripts/icons/general/stylesheets/general_foundicons.css" media="screen" rel="stylesheet" type="text/css" />
        <link href="../scripts/icons/social/stylesheets/social_foundicons.css" media="screen" rel="stylesheet" type="text/css" />
        <!--[if lt IE 8]>
            <link href="scripts/icons/general/stylesheets/general_foundicons_ie7.css" media="screen" rel="stylesheet" type="text/css" />
            <link href="scripts/icons/social/stylesheets/social_foundicons_ie7.css" media="screen" rel="stylesheet" type="text/css" />
        <![endif]-->
        <link rel="stylesheet" href="../scripts/fontawesome/css/font-awesome.min.css">
        <!--[if IE 7]>
            <link rel="stylesheet" href="scripts/fontawesome/css/font-awesome-ie7.min.css">
        <![endif]-->

        <link href="../scripts/carousel/style.css" rel="stylesheet" type="text/css" /><link href="../scripts/camera/css/camera.css" rel="stylesheet" type="text/css" />
        <link href="../scripts/wookmark/css/style.css" rel="stylesheet" type="text/css" />  <link href="../scripts/yoxview/yoxview.css" rel="stylesheet" type="text/css" />

        <link href="../styles/custom.css" rel="stylesheet" type="text/css" />



    </head>
    <body id="pageBody">

        <div id="divBoxed" class="container">

            <div class="transparent-bg" style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;z-index: -1;zoom: 1;"></div>

            <div class="divPanel notop nobottom">
                <div class="row-fluid">
                    <div class="span12">


                        <!--Edit Site Name and Slogan here-->
                        <div id="divLogo">
                            <a href="index.html" id="divSiteTitle">Cl�nica Nazareth</a><br />
                            <a href="index.html" id="divTagLine">�<span class="camera_full_width">Gesti�n de Administraci�n</span>!</a>

                        </div>

                    </div>
                </div>

                <div class="row-fluid">
                    <div class="span12">
                    </div>
                </div>
            </div>
            <!--DENTRO DE ESTE DIV CREAR EL FROMULARIO FAVOR NO UTILZAR
          TABLAS YA QUE EL FROMULARIO SE AJUSTA AL ESPACIO PARA QUE
          PUEDA VERSE EN CUALQUEIR TAMA�O
            -->




            <div class="col-xs-12 col-sm-12 col-md-12">
                <jsp:include page="menu.jsp"></jsp:include>
                    <div class="panel panel-primary">
                        <div class="panel-heading">


                        </div>
                        <div class="panel-body">
                            <h1>
                            <% int algo = Integer.parseInt(request.getParameter("codigoCita"));

                                DatoCita list = Ccita.getPersona(algo);

                                Bfecha f = Bfecha.getFecha();
                            %>


                        </h1>

                        <div class="row">
                            <div class="col-xs-6">

                                <div class="panel panel-default">
                                    <div class="panel-heading">Datos Medico</div>
                                    <script>
                                        $(function() {
                                            $('#cmbDoctorid').change(function() {
                                                $('#myForm').submit();
                                            });
                                        });</script>
                                        <%
                                            HttpSession cmbDoctor = request.getSession();
                                            cmbDoctor.setAttribute("sDoctor", request.getParameter("cmbDoctors"));

                                        %>
                                    <div class="panel-body">
                                        <form  id="updateCita" method="post" action="../Sactualizarcita">  

                                            <label name="lblNombre" > Medico</label>
                                            <%



                                                Connection connection3 = cConexion.conectar_ds();
                                                Statement pst3 = connection3.createStatement();
                                                String query3 = "select (p.pApellPer) as idEmpleado, concat(p.pnombrePer,' ',p.snombrePer,' ',p.pApellPer,' ',p.sApellPer ) as Nombre from empleado as e inner join persona as p on p.idPersona=e.fkpersona inner join cargo as c on c.idCargo=e.fkCargo where c.nombreCargo=" + "'medico'";
                                                ResultSet rs3 = null;

                                                try {
                                                    rs3 = pst3.executeQuery(query3);

                                                    out.println("<select class='form-control' name='cmbDoctors' id='cmbDoctorid'>");
                                                    while (rs3.next()) {
                                                        out.println("<option value='" + rs3.getString("idEmpleado") + "'> Dr " + rs3.getString("Nombre") + "</option>");
                                                    }
                                                    out.println("</select>");
                                                } catch (Exception e) {
                                                    System.out.print(e.getMessage());
                                                } finally {
                                                    connection3.close();
                                                    pst3.close();
                                                }

                                            %>
                                            <label name="lblNombre" > horario </label>
                                            <%

                                                Connection connection = cConexion.conectar_ds();
                                                Statement pst = connection.createStatement();
                                                String query = "select (horaini) as idHora ,(horaini)as hora from horario where fkempleado=" + 2;
                                                ResultSet rs = null;

                                                try {
                                                    rs = pst.executeQuery(query);
                                                    out.println("<p>" + "Los medicos disponibles para:  " + cmbDoctor.getAttribute("sDoctor") + " son" + "</p>");
                                                    out.println("<select class='form-control' name='Horio'>");
                                                    while (rs.next()) {
                                                        out.println("<option value='" + rs.getString("idHora") + "'> " + rs.getString("hora") + "</option>");
                                                    }
                                                    out.println("</select>");
                                                } catch (Exception e) {
                                                    System.out.print(e.getMessage());
                                                } finally {
                                                    connection.close();
                                                    pst.close();
                                                }

                                            %>

                                    </div>

                                </div>

                            </div>
                            <div class="col-xs-6">
                                <div class="panel panel-default">
                                    <div class="panel-heading">Datos Paciente</div>
                                    <div class="panel-body">
                                        <label name="lblApellido" > nombre </label><input name="txtNombre" value="<%=list.getNombre()%>" size="20" />
                                        <label name="lblNombre" >apellido </label><input name="txtApellido" value="<%=list.getApellido()%>" size="20" />
                                    </div>
                                </div>


                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="panel panel-default">
                                    <div class="panel-heading">Fecha  y Estado</div>
                                    <div class="panel-body">
                                        <label name="lblNombre" >fecha </label><input type="date" min="<%=f.getFechalo()%>" name="txtFecha" value="<%=list.getFecha()%>" size="20" />
                                        <label name="lblNombre" > estado</label><input name="txtEstado" value="<%=list.getEstado()%>" size="20" />
                                    </div>
                                </div>


                            </div>
                            <div class="col-xs-6">

                                <div class="panel panel-default">
                                    <div class="panel-heading">Correo de paciente</div>
                                    <div class="panel-body">
                                        <input  name="codigoC"  type="hidden" id="codigoC" value="<%=list.getIdcita()%>">


                                        <label name="lblApellido" > correo </label><input name="txtCorreo" value="<%=list.getCorreo()%>" size="20" />
                                    </div>
                                </div>




                            </div>
                        </div>


                        <input type="submit" name="cmdguardar" class="btn btn-link" value="Confirmar" POST="SUMIT"/>


                        </from>

                    </div>

                    <div>







                    </div>
                </div>
            </div>


        </div>
        <div id="footerOuterSeparator"></div>

        <div id="divFooter" class="footerArea shadow">

            <div class="divPanel"><br /><br />
                <div class="row-fluid">
                    <div class="span12">
                        <p class="copyright">
                            Copyright ? 2014 Cl�nica Nazareth. All Rights Reserved.
                        </p>

                        <div class="social_bookmarks"></div>
                    </div>
                </div>

            </div>
        </div>

        <br /><br /><br />

        <script src="../scripts/jquery.min.js" type="text/javascript"></script>
        <script src="../scripts/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../scripts/default.js" type="text/javascript"></script>

        <script src="scripts/carousel/jquery.carouFredSel-6.2.0-packed.js" type="text/javascript"></script><script type="text/javascript">$('#list_photos').carouFredSel({responsive: true, width: '100%', scroll: 2, items: {width: 320, visible: {min: 2, max: 6}}});</script><script src="scripts/camera/scripts/camera.min.js" type="text/javascript"></script>
        <script src="scripts/easing/jquery.easing.1.3.js" type="text/javascript"></script>
        <script type="text/javascript">function startCamera() {
                $('#camera_wrap').camera({fx: 'simpleFade, mosaicSpiralReverse', time: 2000, loader: 'none', playPause: false, navigation: true, height: '38%', pagination: true});
            }
            $(function() {
                startCamera()
            });</script>

        <script src="scripts/wookmark/js/jquery.wookmark.js" type="text/javascript"></script>
        <script type="text/javascript">$(window).load(function() {
                var options = {autoResize: true, container: $('#gridArea'), offset: 10};
                var handler = $('#tiles li');
                handler.wookmark(options);
                $('#tiles li').each(function() {
                    var imgm = 0;
                    if ($(this).find('img').length > 0)
                        imgm = parseInt($(this).find('img').not('p img').css('margin-bottom'));
                    var newHeight = $(this).find('img').height() + imgm + $(this).find('div').height() + $(this).find('h4').height() + $(this).find('p').not('blockquote p').height() + $(this).find('iframe').height() + $(this).find('blockquote').height() + 5;
                    if ($(this).find('iframe').height())
                        newHeight = newHeight + 15;
                    $(this).css('height', newHeight + 'px');
                });
                handler.wookmark(options);
                handler.wookmark(options);
            });</script>
        <script src="scripts/yoxview/yox.js" type="text/javascript"></script>
        <script src="scripts/yoxview/jquery.yoxview-2.21.js" type="text/javascript"></script>
        <script type="text/javascript">$(document).ready(function() {
                $('.yoxview').yoxview({autoHideInfo: false, renderInfoPin: false, backgroundColor: '#ffffff', backgroundOpacity: 0.8, infoBackColor: '#000000', infoBackOpacity: 1});
                $('.yoxview a img').hover(function() {
                    $(this).animate({opacity: 0.7}, 300)
                }, function() {
                    $(this).animate({opacity: 1}, 300)
                });
            });</script>

    </body>
</html>