#ifndef RETANGULO_H
#define RETANGULO_H
#include "Figura.h"
#include <gtkmm.h>

class Retangulo : public Figura {
  private:
    int lado1, lado2;

  public:
    Retangulo( const int x, const int y, const int lado1 = 2, const int lado2 = 1 );
    virtual void draw( const Cairo::RefPtr<Cairo::Context> &cr ) const;
};

#endif
