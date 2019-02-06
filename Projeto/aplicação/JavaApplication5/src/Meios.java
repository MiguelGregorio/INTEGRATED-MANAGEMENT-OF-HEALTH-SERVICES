public class Meios {
    private int EpisodioClinicoID;
    private String Nome;
    private String Resultado;

    public Meios(int EpisodioClinicoID, String Nome, String Resultado) {
        this.EpisodioClinicoID = EpisodioClinicoID;
        this.Nome = Nome;
        this.Resultado = Resultado;
    }

    public int getEpisodioClinicoID() {
        return EpisodioClinicoID;
    }

    public void setEpisodioClinicoID(int EpisodioClinicoID) {
        this.EpisodioClinicoID = EpisodioClinicoID;
    }

    public String getNome() {
        return Nome;
    }

    public void setNome(String Nome) {
        this.Nome = Nome;
    }

    public String getResultado() {
        return Resultado;
    }

    public void setResultado(String Resultado) {
        this.Resultado = Resultado;
    }
}