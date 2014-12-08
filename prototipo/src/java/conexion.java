/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Rafa
 */

import com.mongodb.BasicDBObject;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.DBCollection;
import com.mongodb.DB;
import com.mongodb.Mongo;
import java.net.UnknownHostException;
import java.util.Vector;
public class conexion {
private Mongo mg;
private DB db;
    public conexion() throws UnknownHostException {
        mg = new Mongo("localhost", 27017);
  	db = mg.getDB("local");
	/*DBCollection collection = db.getCollection("testData");

	/*BasicDBObject me = new BasicDBObject();
	me.put("id", 132);

	collection.insert(me);

	DBCursor cursor = collection.find();

	System.out.println(cursor.next());
        System.out.println(cursor.next());
        System.out.println(cursor.next());*/
    }

    void insertarBuzon(String idBuzon, String idMensaje, String fechaRecepcion, String fechaRevision) {
        DBCollection collection = db.getCollection("buzon");

	BasicDBObject me = new BasicDBObject();
	me.put("idBuzon", idBuzon);
        me.put("idMensaje", idMensaje);
        me.put("fechaRecepcion", fechaRecepcion);
        me.put("fechaRevision", fechaRevision);
	collection.insert(me);
        mg.close();
    }

    void insertarCampana(String idCampana, String nombreCampana, String fechaEnvio) {
         DBCollection collection = db.getCollection("campana");

	BasicDBObject me = new BasicDBObject();
	me.put("idCampana", idCampana);
        me.put("nombreCampana", nombreCampana);
        me.put("fechaEnvio", fechaEnvio);
	collection.insert(me);
        mg.close();
    }

    void insertarGrupo(String idGrupo, String nombreGrupo) {
         DBCollection collection = db.getCollection("grupo");

	BasicDBObject me = new BasicDBObject();
	me.put("idGrupo", idGrupo);
        me.put("nombreGrupo", nombreGrupo);
	collection.insert(me);
        mg.close();
    }

    void insertarMensaje(String idMensaje, String asunto, String mensaje, String fecha, String usuario) {
        DBCollection collection = db.getCollection("mensaje");

	BasicDBObject me = new BasicDBObject();
	me.put("idMensaje", idMensaje);
        me.put("asunto", asunto);
        me.put("mensaje", mensaje);
        me.put("fecha", fecha);
        me.put("usuario", usuario);
	collection.insert(me);
        mg.close();
    }

    void insertarUsuario(String idUsuario, String nombres, String apellidos, String correo, String celular) {
        DBCollection collection = db.getCollection("usuario");

	BasicDBObject me = new BasicDBObject();
	me.put("idUsuario", idUsuario);
        me.put("nombres", nombres);
        me.put("apellidos", apellidos);
        me.put("correo", correo);
        me.put("celular", celular);
	collection.insert(me);
        mg.close();
    }
    
     
    Vector consultaGeneral(String documento, String campo, String valor) {
       Vector<DBObject> info=new Vector();
           try {
               DBCollection collection = db.getCollection(documento);	
	DBObject campoBuscado=new BasicDBObject(campo,valor);
        DBCursor cursor = collection.find(campoBuscado);
        
        while(cursor.hasNext()){
            DBObject objeto=cursor.next();            
            info.add(objeto);
        }
           } catch (Exception e) {
               e.printStackTrace();
           }
        
        mg.close();
        return info;
    }
    
}
