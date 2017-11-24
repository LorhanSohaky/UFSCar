#ifndef MYAREA_H
#define MYAREA_H

#include "figuras/Figura.h"
#include <gtkmm.h>
#include <vector>

using namespace std;

class MyArea : public DrawingArea {
  public:
    MyArea();
    ~MyArea();

  private:
    bool tempo;
    int tipoFigura;
    vector<Figura *> figuras;

    bool on_timeout();
    bool on_button_press_event( GdkEventButton *event );
    bool on_draw( const Cairo::RefPtr<Cairo::Context> &cr ) override;
    void addFigura( Figura *figura );

    Ponto randPosition() const;
};

#endif
