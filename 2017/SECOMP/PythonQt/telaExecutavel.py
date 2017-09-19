import sys
from PyQt5.QtWidgets import QApplication, QWidget, QMainWindow  #Poderia utilizar *
from tela1 import Ui_MainWindow


class Tela(QMainWindow):
    def __init__(self):
        super(Tela, self).__init__()
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)


def main():
    app = QApplication(sys.argv)

    mainWindow = Tela()
    mainWindow.show()

    sys.exit(app.exec_())


if __name__ == '__main__':
    main()
