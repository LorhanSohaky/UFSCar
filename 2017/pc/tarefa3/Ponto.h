#ifndef PONTO_H
#define PONTO_H

class Ponto {
private:
    int x, y;

  public:
    Ponto( const int x, const int y );
    void setPosition( const int x, const int y );

    int getX( void );
    int getY( void );
};

#endif
