#include "MyArea.h"
#include "figuras/Arco.h"
#include "figuras/Circulo.h"
#include "figuras/Elipse.h"
#include "figuras/Quadrado.h"
#include "figuras/Retangulo.h"
#include <cstdlib>
#include <ctime>
#include <iostream>

using namespace Gtk;
using namespace std;

MyArea::MyArea() {
    tempo = false;
    int timeOutValue = 1000; // 1000 in ms (1.0 sec)

    srand( time( NULL ) );
    sigc::slot<bool> mySlot = sigc::mem_fun( *this, &MyArea::on_timeout );

    add_events( Gdk::BUTTON_PRESS_MASK );
    Glib::signal_timeout().connect( mySlot, timeOutValue );
}

bool MyArea::on_timeout() {
    tempo = true;
    cout << "Tempo" << endl;
    queue_draw();
    return true;
}

MyArea::~MyArea() {
    cout << "Chamando destrutor" << '\n';
    for( Figura *figura : figuras ) {
        delete figura;
    }
}

Ponto MyArea::randPosition() const {
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

int sortearTipoFigura( const int quantidadeDeTipo ) {
    return rand() % quantidadeDeTipo;
}

bool MyArea::on_button_press_event( GdkEventButton *event ) {
    cout << "Clicou" << '\n';
    if( ( event->type == GDK_BUTTON_PRESS ) && ( event->button == 1 ) ) {
        tipoFigura = sortearTipoFigura( 5 ); // 5 é qtd de tipos de figuras
        switch( tipoFigura ) {
            case 0:
                addFigura( new Circulo( event->x, event->y, 2 ) );
                break;
            case 1:
                addFigura( new Elipse( event->x, event->y, 2 ) );
                break;
            case 2:
                addFigura( new Quadrado( event->x, event->y, 2 ) );
                break;
            case 3:
                addFigura( new Retangulo( event->x, event->y, 1, 2 ) );
                break;
            case 4:
                addFigura( new Arco( event->x, event->y, 4 ) );
                break;
            default:
                cout << "Erro" << '\n';
        }
        queue_draw();
    }
    return true;
}

void MyArea::addFigura( Figura *figura ) {
    figuras.push_back( figura );
}
