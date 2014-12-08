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
                        DBCollection collection = db.getCollection("grupo");
                        DBCursor cursor = collection.find();
                        out.println("<table border=\"1\">");
                        out.println("<tr><th>ID GRUPO</th><th>NOMBRE GRUPO</th></tr>");
                        while(cursor.hasNext()){
                            DBObject objeto=cursor.next();
                            Vector<String> temporal=new Vector<String>();
                            String idGrupo=objeto.get("idGrupo").toString();
                            String nombreGrupo=objeto.get("nombreGrupo").toString();
                            
                            temporal.add(idGrupo);
                            temporal.add(nombreGrupo);
                            info.add(temporal);
                        }
                        for(int i=0;i<info.size();i++){
                        out.println("<tr><td>"+info.elementAt(i).elementAt(0)+"</td><td>"+info.elementAt(i).elementAt(1)+"</td></tr>");
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
