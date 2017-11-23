#ifndef MYWINDOW_H
#define MYWINDOW_H

#include "MyArea.h"
#include <gtkmm.h>

class MyWindow : public Gtk::Window {
  private:
    MyArea area;

  public:
    MyWindow( void );
};

#endif
