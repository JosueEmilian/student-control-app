package controlador;

import java.sql.Date;
import java.sql.Timestamp;


public class Estudiantes {

    private int carnet;
    private String nombre;
    private String apellido;
    private Date fechaNacimiento;
    private String correo;
    private String celular;
    private Timestamp fechaHoraActual;
    
    //Constructores

    public Estudiantes() {
    }

    public Estudiantes(int carnet, String nombre, String apellido, Date fechaNacimiento, String correo, String celular, Timestamp fechaHoraActual) {
        this.carnet = carnet;
        this.nombre = nombre;
        this.apellido = apellido;
        this.fechaNacimiento = fechaNacimiento;
        this.correo = correo;
        this.celular = celular;
        this.fechaHoraActual = fechaHoraActual;
    }
    
    //Getters and Setters

    public int getCarnet() {
        return carnet;
    }

    public void setCarnet(int carnet) {
        this.carnet = carnet;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public Timestamp getFechaHoraActual() {
        return fechaHoraActual;
    }

    public void setFechaHoraActual(Timestamp fechaHoraActual) {
        this.fechaHoraActual = fechaHoraActual;
    }
    
    
    //ToString

    @Override
    public String toString() {
        return "Estudiantes{" + "carnet=" + carnet + ", nombre=" + nombre + ", apellido=" + apellido + ", fechaNacimiento=" + fechaNacimiento + ", correo=" + correo + ", celular=" + celular + ", fechaHoraActual=" + fechaHoraActual + '}';
    }
    
    
}
