package cl.yerko.model;

public class Cliente {
    //Atributos
    private String runCliente;
    private String nombreCliente;
    private String apellidoCliente;
    private String aniosCliente;
    private CategoriaEnum nombreCategoria;

    // Constructores
    public Cliente() {
    }

    public Cliente(String runCliente, String nombreCliente, String apellidoCliente, String aniosCliente) {
        this.runCliente = runCliente;
        this.nombreCliente = nombreCliente;
        this.apellidoCliente = apellidoCliente;
        this.aniosCliente = aniosCliente;
        this.nombreCategoria = nombreCategoria;
    }

    //Getters y Setters
    public String getRunCliente() {
        return runCliente;
    }

    public void setRunCliente(String runCliente) {
        this.runCliente = runCliente;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public String getApellidoCliente() {
        return apellidoCliente;
    }

    public void setApellidoCliente(String apellidoCliente) {
        this.apellidoCliente = apellidoCliente;
    }

    public String getAniosCliente() {
        return aniosCliente;
    }

    public void setAniosCliente(String aniosCliente) {
        this.aniosCliente = aniosCliente;
    }

    public CategoriaEnum getNombreCategoria() {
        return nombreCategoria;
    }

    public void setNombreCategoria(CategoriaEnum nombreCategoria) {
        this.nombreCategoria = nombreCategoria;
    }

    // ToString

    @Override
    public String toString() {
        return "Cliente{" +
                "runCliente='" + runCliente + '\'' +
                ", nombreCliente='" + nombreCliente + '\'' +
                ", apellidoCliente='" + apellidoCliente + '\'' +
                ", aniosCliente='" + aniosCliente + '\'' +
                ", nombreCategoria=" + nombreCategoria +
                '}';
    }
}
