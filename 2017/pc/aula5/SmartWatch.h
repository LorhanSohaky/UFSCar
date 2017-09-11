class SmartWatch {
  private:
    String marca, modelo;
    int hora, minuto, segundo, passos, batimentosCardiaco, nivelBateria;
    bool receberNotificacoes;

  public:
    void setMarca( String marca );
    void setModelo( String modelo );
    void setHora( int hora );
    void setMinuto( int minuto );
    void setSegundo( int segundo );
    void setBatimentosCardiaco( int batimentosCardiaco );
    void setReceberNotificacoes( int receberNotificacoes );
    void setNivelBateria( int nivelBateria );

    void incrementaPassos();
    void zerarPassos();

    getMarca() : String;
    getModelo() : String;
    getHora() : Inteiro;
    getMinuto() : Inteiro;
    getSegundo() : Inteiro;

    getPassos() : Inteiro;

    getBatimentosCardiaco() : Inteiro;
    isReceberNotificacoes : () : Booleano;
    getNivelBateria() : Inteiro;
};
