#include "MyArea.h"
#include "Circulo.h"
#include <cstdlib>
#include <ctime>
#include <iostream>

using namespace Gtk;
using namespace std;

MyArea::MyArea() {
    tipoFigura = 0;
    tempo = false;

    srand( time( NULL ) );

    add_events( Gdk::BUTTON_PRESS_MASK );

    int timeOutValue = 1000; // 1000 in ms (1.0 sec)
    sigc::slot<bool> mySlot = sigc::mem_fun( *this, &MyArea::on_timeout );
    Glib::signal_timeout().connect( mySlot, timeOutValue );
}

bool MyArea::on_timeout() {
    tempo = true;
    cout << "Tempo" << endl;
    queue_draw();
    return true;
}

MyArea::~MyArea() {
    for( Figura *figura : figuras ) {
        delete figura;
    }
}

Ponto MyArea::randPosition() {
    Gtk::Allocation allocation = get_allocation();
    const int width = allocation.get_width();
    const int height = allocation.get_height();

    int x = rand() % width;
    int y = rand() % height;

    return Ponto( x, y );
}

bool MyArea::on_draw( const Cairo::RefPtr<Cairo::Context> &cr ) {
    for( vector<Figura *>::iterator it = figuras.begin(); it != figuras.end(); it++ ) {
        if( tempo ) {
            ( *it )->setPosition( randPosition() );
        }

        cr->save();

        ( *it )->draw( cr );

        cr->stroke();
        cr->restore();
    }
    tempo = false;
    return true;
}

bool MyArea::on_button_press_event( GdkEventButton *event ) {
    cout << "Clicou" << '\n';
    if( ( event->type == GDK_BUTTON_PRESS ) && ( event->button == 1 ) ) {
        tipoFigura = 0; // 5 é qtd de tipos de figuras
        switch( tipoFigura ) {
            case 0:
                Circulo *c = new Circulo( event->x, event->y, 2 );
                addFigura( c );
                break;
        }
        queue_draw();
    }
    return true;
}

void MyArea::addFigura( Figura *figura ) {
    figuras.push_back( figura );
}
