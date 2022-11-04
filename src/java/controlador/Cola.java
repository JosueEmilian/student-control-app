package controlador;
import java.sql.Timestamp;
public class Cola {
    
    private int carnet;
    private Timestamp fechaHoraActual;
    
    //Constructores

    public Cola(int carnet, Timestamp fechaHoraActual) {
        this.carnet = carnet;
        this.fechaHoraActual = fechaHoraActual;
    }

    public Cola() {
    }
    
    //Getters and Setters

    public int getCarnet() {
        return carnet;
    }

    public void setCarnet(int carnet) {
        this.carnet = carnet;
    }

    public Timestamp getFechaHoraActual() {
        return fechaHoraActual;
    }

    public void setFechaHoraActual(Timestamp fechaHoraActual) {
        this.fechaHoraActual = fechaHoraActual;
    }
    
    //toString

    @Override
    public String toString() {
        return "Cola{" + "carnet=" + carnet + ", fechaHoraActual=" + fechaHoraActual + '}';
    }
    
}
