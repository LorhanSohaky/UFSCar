#ifndef QUADRADO_H
#define QUADRADO_H
#include "Figura.h"
#include <gtkmm.h>

class Quadrado : public Figura {
  private:
    int lado;

  public:
    Quadrado( const int x, const int y, const int lado = 2 );
    virtual void draw( const Cairo::RefPtr<Cairo::Context> &cr ) const;
};

#endif
