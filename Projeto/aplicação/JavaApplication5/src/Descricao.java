class Descricao {
    private int EpisodioClinicoID;
    private String Descricao;

    public Descricao(int EpisodioClinicoID, String Descricao){
        this.EpisodioClinicoID = EpisodioClinicoID;
        this.Descricao = Descricao;
    }

    public int getEpisodioClinicoID() {
        return EpisodioClinicoID;
    }

    public void setEpisodioClinicoID(int EpisodioClinicoID) {
        this.EpisodioClinicoID = EpisodioClinicoID;
    }

    public String getDescricao() {
        return Descricao;
    }

    public void setDescricao(String Descricao) {
        this.Descricao = Descricao;
    }
}