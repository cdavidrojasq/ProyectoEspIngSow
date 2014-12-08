<%@page import="com.mongodb.DBObject"%>
<%@page import="com.mongodb.DBCursor"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.DB"%>
<%@page import="com.mongodb.Mongo"%>
<%@page import="java.net.UnknownHostException"%>
<%@page import="java.util.Vector"%>
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
                    Mongo mg;
                    DB db;
                    try {
                        mg = new Mongo("localhost", 27017);
                        db = mg.getDB("local");
                        Vector<Vector> info=new Vector();
                        DBCollection collection = db.getCollection("mensaje");
                        DBCursor cursor = collection.find();
                        out.println("<table border=\"1\">");
                        out.println("<tr><th>ID MENSAJE</th><th>ASUNTO</th><th>MENSAJE</th><th>FECHA CREACIÓN</th><th>USUARIO CREACIÓN</th></tr>");
                        while(cursor.hasNext()){
                            DBObject objeto=cursor.next();
                            Vector<String> temporal=new Vector<String>();
                            String idMensaje=objeto.get("idMensaje").toString();
                            String asunto=objeto.get("asunto").toString();
                            String mensaje=objeto.get("mensaje").toString();
                            String fecha=objeto.get("fecha").toString();
                            String usuario=objeto.get("usuario").toString();
                            
                            temporal.add(idMensaje);
                            temporal.add(asunto);
                            temporal.add(mensaje);
                            temporal.add(fecha);
                            temporal.add(usuario);
                            info.add(temporal);
                        }
                        for(int i=0;i<info.size();i++){
                        out.println("<tr><td>"+info.elementAt(i).elementAt(0)+"</td><td>"+info.elementAt(i).elementAt(1)+"</td><td>"+info.elementAt(i).elementAt(2)+"</td><td>"+info.elementAt(i).elementAt(3)+"</td><td>"+info.elementAt(i).elementAt(4)+"</td></tr>");
                        }       
                    out.println("</table>");
                    mg.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    
                %>
            </div>
        </div>
    </body>
</html>
