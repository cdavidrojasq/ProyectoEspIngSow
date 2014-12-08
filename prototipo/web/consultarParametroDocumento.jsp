<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestor de Mensajes</title>
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
    </head>

    <body>
        <div id="cabecera">
            <h1>Gestor de mensajes</h1>
        </div>
        <div id="contenedor_global">
            <div id="menu_lateral">
                <ul id="menu">
                    <li><a href="consultar.jsp">Consultar</a></li>
                    <li><a href="insertar.jsp">Enviar</a></li>
                    <li><a href="index.jsp">Inicio</a></li>
                </ul>
            </div>
            <div id="contenedor">
                <%
                    String documento=request.getParameter("documento");
                %>
                    <form action="consultarParametroDocumento">
                       <table style="height: 400px">
                           <tr><td>Documento</td><td><input style="height: 50px;width: 500px; font-family: fantasy;font-size: larger" name="documento" value="<%= documento%>"></td></tr>
                            <tr><td>Campo</td>
                                <td>
                                    <select style="height: 50px;width: 500px; font-family: fantasy;font-size: larger" name="campo">
                                        <%if(documento.contentEquals("buzon")){
                                            out.println("<option value=\"idBuzon\">ID Buzón</option>");
                                            out.println("<option value=\"idMensaje\">ID Mensaje</option>");
                                        }else if(documento.contentEquals("campana")){
                                            out.println("<option value=\"idCampana\">ID Campaña</option>");
                                            out.println("<option value=\"nombreCampana\">Nombre Campaña</option>");
                                        }else if(documento.contentEquals("grupo")){
                                            out.println("<option value=\"idGrupo\">ID Grupo</option>");
                                            out.println("<option value=\"nombreGrupo\">Nombre Grupo</option>");
                                        }else if(documento.contentEquals("mensaje")){
                                            out.println("<option value=\"idMensaje\">ID Mensaje</option>");
                                            out.println("<option value=\"asunto\">Asunto</option>");
                                            out.println("<option value=\"usuario\">Usuario</option>");                                            
                                        }else if(documento.contentEquals("usuario")){
                                            out.println("<option value=\"idUsuario\">ID Usuario</option>");
                                            out.println("<option value=\"nombres\">Nombres</option>");
                                            out.println("<option value=\"apellidos\">Apellidos</option>");
                                            out.println("<option value=\"correo\">Correo</option>");
                                            out.println("<option value=\"celular\">Celular</option>");
                                        }
                                        %>
                                        <option value=\"\"></option>
                                    </select>
                                </td>
                            </tr>
                            <tr><td>Valor</td><td><input style="height: 50px;width: 500px; font-family: fantasy;font-size: larger" name="valor"></td></tr>
                        <tr><td><input style="font-family: fantasy;font-size: larger"type="submit" value="Buscar" /></td></tr>
                        </table>
                    </form>
                                        <a href="consultarParametro.jsp">VOLVER</a>
            </div>
        </div>
    </body>
</html>
