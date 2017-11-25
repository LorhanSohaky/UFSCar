#ifndef PONTO_H
#define PONTO_H

class Ponto {
  protected:
    int x, y;

  public:
    Ponto( const int x, const int y );
    void setPosition( const int x, const int y );

    int getX( void ) const;
    int getY( void ) const;
};

#endif
