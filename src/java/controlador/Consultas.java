package controlador;import java.sql.Date;import java.sql.PreparedStatement;import java.sql.ResultSet;import java.sql.SQLException;import java.util.ArrayList;public class Consultas extends conexion {    //Metodo para validar el usuario    public boolean autentificacion(String usuario, String clave) {        PreparedStatement pst = null;        ResultSet rs = null;        try {            String consulta = "SELECT * FROM USUARIOS where USUARIO=? AND CLAVE=?";            pst = getConexion().prepareStatement(consulta, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);            pst.setString(1, usuario);            pst.setString(2, clave);            rs = pst.executeQuery();            if (rs.absolute(1)) { //verifica registros                return true;            }        } catch (SQLException e) {            System.out.println(e);        } finally {            try {                if (getConexion() != null) {                    getConexion().close();                }                if (pst != null) {                    pst.close();                }                if (rs != null) {                    rs.close();                }            } catch (SQLException e) {                System.out.println("Error -->> " + e.getMessage());            }        }        return false;    }    /*    TEST1    public static void main(String[] args) {        Consultas co = new Consultas();        System.out.println(co.autentificacion("PROGRA2", "umg123"));    }     */    //Metodo para Registrar un nuevo usuario    public boolean registrar(String nombre, String apellido, String usuario, String correo, String clave) {        PreparedStatement pst = null;        try {            String consulta = "Insert into USUARIOS (NOMBRE, APELLIDO, USUARIO, CORREO, CLAVE) VALUES (?,?,?,?,?)";            pst = getConexion().prepareStatement(consulta);            pst.setString(1, nombre);            pst.setString(2, apellido);            pst.setString(3, usuario);            pst.setString(4, correo);            pst.setString(5, clave);            if (pst.executeUpdate() == 1) { //si afecta a una fila                return true;            }        } catch (Exception e) {            System.out.println("Error --> " + e);        } finally {            try {                if (getConexion() != null) {                    getConexion().close();                }                if (pst != null) {                    pst.close();                }            } catch (Exception e) {                System.out.println("Error --> " + e);            }        }        return false;    }    /*      TEST2    public static void main(String[] args) {        Consultas co = new Consultas();        co.registrar("Josue", "Emilian", "JosueE", "@mail", "123");    }     */    //Metodo para registrar un alumno    public boolean registrarEstudiante(Estudiantes p) {        //fecha_Registro = "sysdate";        PreparedStatement pst = null;        boolean flag = false;        try {            String consulta = "INSERT INTO ESTUDIANTES (CARNET, NOMBRE, APELLIDO, FECHA_NACIMIENTO, CORREO, CELULAR, FECHA_REGISTRO) VALUES (?,?,?,?,?,?,?)";            pst = getConexion().prepareStatement(consulta);            pst.setInt(1, p.getCarnet());            pst.setString(2, p.getNombre());            pst.setString(3, p.getApellido());            pst.setDate(4, p.getFechaNacimiento());            pst.setString(5, p.getCorreo());            pst.setString(6, p.getCelular());            pst.setTimestamp(7, p.getFechaHoraActual());            if (pst.executeUpdate() == 1) { //si afecta a una fila                flag = true;            }        } catch (Exception e) {            System.out.println("Error --> " + e);        } finally {            try {                if (getConexion() != null) {                    getConexion().close();                }                if (pst != null) {                    pst.close();                }            } catch (Exception e) {                System.out.println("Error --> " + e);            }        }        return flag;    }    /*    TEST 3        public static void main(String[] args) {        Consultas co = new Consultas();        Date fechaNaci = new Date(116,5,3);        System.out.println(co.registrarEstudiante(new Estudiantes(21, "Test", "Test", (java.sql.Date) fechaNaci, "@mail", "6666")));     }     */    //METODO PARA LISTA COLA DE ESTUDIANTES    public ArrayList ListaEstudiantes() {        PreparedStatement pst = null;        ResultSet rs = null;        ArrayList<Estudiantes> Listado = new ArrayList();        String consulta = "SELECT CARNET, FECHA_REGISTRO FROM ESTUDIANTES ORDER BY FECHA_REGISTRO";        try {            pst = getConexion().prepareStatement(consulta, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);            rs = pst.executeQuery();            while (rs.next()) {                Estudiantes e = new Estudiantes();                e.setCarnet(rs.getInt(1));                e.setFechaHoraActual(rs.getTimestamp(2));                Listado.add(e);            }        } catch (SQLException e) {            System.out.println("Error al consultar la DB --> " + e.getMessage());        }        return Listado;    }        //Metodo para agregar a la cola    public boolean registrarAlaCola(Estudiantes p) {        PreparedStatement pst = null;        boolean flag = false;        try {            String consulta = "INSERT INTO COLA_ESTUDIANTES VALUES VALUES (?,?,?)";            pst = getConexion().prepareStatement(consulta);            pst.setInt(1, p.getCarnet());            pst.setTimestamp(2, p.getFechaHoraActual());            pst.setInt(3, p.getCarnet());            if (pst.executeUpdate() == 1) { //si afecta a una fila                flag = true;            }        } catch (Exception e) {            System.out.println("Error --> " + e);        } finally {            try {                if (getConexion() != null) {                    getConexion().close();                }                if (pst != null) {                    pst.close();                }            } catch (Exception e) {                System.out.println("Error --> " + e);            }        }        return flag;    }    /*        //Metodo inscribir alumnos puede ser    public ArrayList disponiblesParaLaCola(int pCarnet){        ArrayList<Estudiantes> Listado = new ArrayList();        PreparedStatement pst = null;        ResultSet rs = null;                String consulta = "SELECT CARNET, FECHA_REGISTRO FROM ESTUDIANTES WHERE CARNET = " + pCarnet;        try {            pst = pst = getConexion().prepareStatement(consulta, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);            rs = pst.executeQuery();            while (rs.next()) {                                Estudiantes e = new Estudiantes();                e.setCarnet(rs.getInt(1));                e.setFechaHoraActual(rs.getTimestamp(2));                Listado.add(e);            }        } catch (SQLException e) {            System.out.println("Error al realizar consulta ala DB "+ e.getMessage());        }        return Listado;    }     */}