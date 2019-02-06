import java.util.*;

class Medico {
    private String Dia;
    private String Hora;
    private int SalaID;
    private int MarcacaoID;
    private int OcorrenciaID;
    private int ServicoSaudeID;
    private int AreaClinicaID;
    private int RecursosID;
    
    public Medico( int MarcacaoID, String Dia, String Hora, int SalaID, int OcorrenciaID, int ServicoSaudeID, int AreaClinicaID, int RecursosID){
        this.AreaClinicaID = AreaClinicaID;
        this.MarcacaoID = MarcacaoID;
        this.OcorrenciaID = OcorrenciaID;
        this.RecursosID = RecursosID;
        this.ServicoSaudeID = ServicoSaudeID;
        this.Dia = Dia;
        this.Hora = Hora;
        this.SalaID = SalaID;
    }

    public String getDia() {
        return Dia;
    }

    public String getHora() {
        return Hora;
    }

    public int getSalaID() {
        return SalaID;
    }

    public int getMarcacaoID() {
        return MarcacaoID;
    }

    public int getOcorrenciaID() {
        return OcorrenciaID;
    }

    public int getServicoSaudeID() {
        return ServicoSaudeID;
    }

    public int getAreaClinicaID() {
        return AreaClinicaID;
    }

    public int getRecursosID() {
        return RecursosID;
    }

    public void setDia(String Dia) {
        this.Dia = Dia;
    }

    public void setHora(String Hora) {
        this.Hora = Hora;
    }

    public void setSalaID(int SalaID) {
        this.SalaID = SalaID;
    }

    public void setMarcacaoID(int MarcacaoID) {
        this.MarcacaoID = MarcacaoID;
    }

    public void setOcorrenciaID(int OcorrenciaID) {
        this.OcorrenciaID = OcorrenciaID;
    }

    public void setServicoSaudeID(int ServicoSaudeID) {
        this.ServicoSaudeID = ServicoSaudeID;
    }

    public void setAreaClinicaID(int AreaClinicaID) {
        this.AreaClinicaID = AreaClinicaID;
    }

    public void setRecursosID(int RecursosID) {
        this.RecursosID = RecursosID;
    }
}
