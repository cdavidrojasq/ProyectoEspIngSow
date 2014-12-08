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
                <div id="menu_insertar">
                <ul id="menu2">
                    <li><a href="consultar_mensajes.jsp">Consultar Mensajes</a></li>
                    <li><a href="consultar_grupos.jsp">Consultar Grupos</a></li>
                    <li><a href="consultar_usuarios.jsp">Consultar Usuarios</a></li>
                    <li><a href="consultar_buzones.jsp">Consultar Buzones</a></li>
                    <li><a href="consultar_campanas.jsp">Consultar Campañas</a></li>
                    <li><a href="consultarParametro.jsp">Consultar por Parametro</a></li>
                </ul>
            </div>
            </div>
        </div>
    </body>
</html>
