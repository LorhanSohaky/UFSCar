class Vetor {
  private:
    int tamanho;
    int *ponteiro;

  public:
    Vetor( const int tamanho = 10 );
    ~Vetor( void );

    int getValor( const int posicao ) const;
    bool setValor( const int posicao, const int valor );

    void print( void ) const;
};
