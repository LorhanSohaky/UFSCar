class SmartWatch {
  private:
    String marca, modelo;
    int hora, minuto, segundo, passos, batimentosCardiaco, nivelBateria;
    bool receberNotificacoes;

  public:
    void setMarca( const String marca );
    void setModelo( const String modelo );
    void setHora( const int hora );
    void setMinuto( const int minuto );
    void setSegundo( const int segundo );
    void setBatimentosCardiaco( const int batimentosCardiaco );
    void setReceberNotificacoes( const bool receberNotificacoes );
    void setNivelBateria( const int nivelBateria );

    void incrementaPassos( void );
    void zerarPassos( void );

    String getMarca( void ) const;
    String getModelo( void ) const;
    int getHora( void ) const;
    int getMinuto( void ) const;
    int getSegundo( void ) const;
    int getPassos( void ) const;
    int getBatimentosCardiaco( void ) const;
    bool isReceberNotificacoes( void ) const;
    int getNivelBateria( void ) const;
};
