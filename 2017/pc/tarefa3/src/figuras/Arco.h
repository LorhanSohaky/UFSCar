#ifndef ARCO_H
#define ARCO_H
#include "Figura.h"
#include <gtkmm.h>

class Arco : public Figura {
  private:
    int raio;

  public:
    Arco( const int x, const int y, const int raio = 10 );
    virtual void draw( const Cairo::RefPtr<Cairo::Context> &cr ) const;
};

#endif
