#ifndef FIGURA_H

#define FIGURA_H

class Figura {
  protected:
    int x, y;

  public:
    Figura( const int x = 0, const int y = 0 );
    void setPosition( const int x = 0, const int y = 0 );
    virtual void draw( const Cairo::RefPtr<Cairo::Context> &cr ) = 0;
};

#endif
