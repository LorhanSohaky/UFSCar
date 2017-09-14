class Vetor {
  private:
    int tamanho;
    int *ponteiro;

  public:
    Vetor( const int tamanho = 10 );
    ~Vetor( void );

    bool getValor( const int posicao, int &local ) const;
    bool setValor( const int posicao, const int valor );

    void print( void ) const;
};
