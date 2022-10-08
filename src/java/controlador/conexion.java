package controlador;

import java.sql.Connection;
import java.sql.DriverManager;

public class conexion {

    private Connection con;
    private String URL = "jdbc:oracle:thin:@localhost:1521:xe";
    private String usuarioDB = "USR_PROYECTO";
    private String claveDB = "umg123";

    public conexion() {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(URL, usuarioDB, claveDB);
        } catch (Exception e) {
            System.out.println("Error de conexion --> " + e);
        }
    }

    public Connection getConexion() {
        return con;
    }

    /* 
    public static void main(String[] args) {
       conexion con =new conexion();
    }
     */
}
