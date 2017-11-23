#include "MyWindow.h"
#include <gtkmm.h>

int main( int argc, char *argv[] ) {
    auto app = Gtk::Application::create( argc, argv, "com.github" );

    MyWindow window;

    app->run( window );
    return 0;
}
