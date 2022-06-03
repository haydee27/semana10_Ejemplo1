package modelo;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Persona {
    //  Atributos de la clase
    String dui;
    String apellidos;
    String nombres;
    
    Connection cnn;
    Statement state;
    ResultSet result;
    
    //Constructor vacio de la clase tipo publico
    //El constructor lo utilizaremos para conectar con la base de datos
    public Persona() {
        try {
            Class.forName("com.mysql.jdbc.Driver"); //Driver de la base de datos
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_recurso_humano?zeroDateTimeBehavior=convertToNull","root","");//url de la BD, user, pass
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Persona(String dui, String apellidos, String nombres) {
        this.dui = dui;
        this.apellidos = apellidos;
        this.nombres = nombres;
    }
    
    
    public boolean insertarDatos(){
        try{
            String miQuery ="insert into tb_persona values('" + dui + "', '" + apellidos + "', '" + nombres + "');";
        int estado = 0; //Estado de insercion
        state = cnn.createStatement();
        estado = state.executeUpdate(miQuery);
        if(estado == 1){
            return true;
        }
        }catch (SQLException ex){
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE,null, ex);
        }
        return false;
    }
    
    public ArrayList<Persona> consultarRegistros(){
        ArrayList<Persona> person = new ArrayList(); //Crear el array de almacenamiento de tipo Persona
        try{
            String miQuery = "select * from tb_persona;";//Definir Consulta
            state = cnn.createStatement();  //Crea el boton para la consulta
            result = state.executeQuery(miQuery);   // Ejecuta la consulta
            while(result.next()){  //Recorre todo el result set y almacena en cada fila los registros encontrados
                
                person.add(new Persona(result.getString("dui_persona"), result.getString("apellidos_persona"), result.getString("nombres_Persona")));
                
            }
            
        } catch(SQLException ex){
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
        return person; //Independiente encuentre o no registro retorna el objeto person
    }
    //Generar los metodos set y get para los atributos

    public String getDui() {
        return dui;
    }

    public void setDui(String dui) {
        this.dui = dui;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public ArrayList<Persona> consultarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
