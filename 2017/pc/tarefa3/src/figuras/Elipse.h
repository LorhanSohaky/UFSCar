#ifndef ELIPSE_H
#define ELIPSE_H
#include "Figura.h"
#include <gtkmm.h>

class Elipse : public Figura {
  private:
    int raio;

  public:
    Elipse( const int x, const int y, const int raio = 1 );
    virtual void draw( const Cairo::RefPtr<Cairo::Context> &cr ) const;
};

#endif
