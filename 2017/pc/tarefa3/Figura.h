#ifndef FIGURA_H
#define FIGURA_H

#include "Ponto.h"
#include <gtkmm.h>

using namespace Gtk;

class Figura {
  protected:
    Ponto ponto;

  public:
    Figura( const int x = 0, const int y = 0 );
    void setPosition( const int x = 0, const int y = 0 );
    void setPosition( Ponto p );
    virtual void draw( const Cairo::RefPtr<Cairo::Context> &cr ) = 0;

    virtual ~Figura( void );
};

#endif
