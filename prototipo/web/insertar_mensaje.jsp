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
            
            <div id="contenedor" style="height: 400px">
                <br>
                
                    <form action="insertarMensaje">
                        <table style="height: 400px">
                            <tr><td>Identificador del Mensaje</td><td><input style="height: 50px;width: 500px; font-family: fantasy;font-size: larger" name="idMensaje" /></td></tr>
                            <tr><td>Asunto</td><td><input style="height: 50px;width: 500px; font-family: fantasy;font-size: larger" name="asunto" /></td></tr>
                            <tr><td>Mensaje</td><td height="200px"><textarea style="height: 200px;width: 500px; font-family: fantasy;font-size: larger" name="mensaje"></textarea></td></tr>
                        <tr><td><input style="font-family: fantasy;font-size: larger"type="submit" value="Ingresar" /></td></tr>
                        </table>
                    </form>
                
            </div>
        </div>
    </body>
</html>
