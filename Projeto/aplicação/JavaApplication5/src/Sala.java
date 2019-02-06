public class Sala {
    private int SalaID;
    private String Dia;
    private String Hora;

    public Sala(int SalaID, String Dia, String Hora) {
        this.SalaID = SalaID;
        this.Dia = Dia;
        this.Hora = Hora;
    }

    public int getSalaID() {
        return SalaID;
    }

    public void setSalaID(int SalaID) {
        this.SalaID = SalaID;
    }

    public String getDia() {
        return Dia;
    }

    public void setDia(String Dia) {
        this.Dia = Dia;
    }

    public String getHora() {
        return Hora;
    }

    public void setHora(String Hora) {
        this.Hora = Hora;
    }
}
