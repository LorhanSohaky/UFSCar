#include <string>

using namespace std;

class SmartWatch {
  private:
    string marca, modelo;
    int hora, minuto, segundo, passos, batimentosCardiaco, nivelBateria;
    bool receberNotificacoes;

  public:
    SmartWatch( const string marca,
                const string modelo,
                const int hora = 0,
                const int minuto = 0,
                const int segundo = 0,
                const int batimentosCardiaco = 0,
                const int nivelBateria = 100,
                const bool receberNotificacoes = true );

    ~SmartWatch( void );

    void printDados( void ) const;

    void setMarca( const string marca );
    void setModelo( const string modelo );
    void setHora( const int hora );
    void setMinuto( const int minuto );
    void setSegundo( const int segundo );
    void setBatimentosCardiaco( const int batimentosCardiaco );
    void setReceberNotificacoes( const bool receberNotificacoes );
    void setNivelBateria( const int nivelBateria );

    void incrementaPassos( void );
    void zerarPassos( void );

    string getMarca( void ) const;
    string getModelo( void ) const;
    int getHora( void ) const;
    int getMinuto( void ) const;
    int getSegundo( void ) const;
    int getPassos( void ) const;
    int getBatimentosCardiaco( void ) const;
    bool isReceberNotificacoes( void ) const;
    int getNivelBateria( void ) const;
};
