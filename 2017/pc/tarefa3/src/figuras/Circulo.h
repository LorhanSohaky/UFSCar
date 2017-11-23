#ifndef CIRCULO_H
#define CIRCULO_H
#include "Figura.h"
#include <gtkmm.h>

class Circulo : public Figura {
  private:
    int raio;

  public:
    Circulo( const int x, const int y, const int raio = 10 );
    virtual void draw( const Cairo::RefPtr<Cairo::Context> &cr ) const;
};

#endif
