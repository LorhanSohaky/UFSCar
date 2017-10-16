import sys
from PyQt5.QtWidgets import QApplication, QWidget, QMainWindow  #Poderia utilizar *
from tela1 import Ui_MainWindow


class Tela(QMainWindow):
    contador = 0

    def __init__(self):
        super(Tela, self).__init__()
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        self.connectSignal()

    def connectSignal(self):
        self.ui.btnEnviar.clicked.connect(self.lineeditAction)

    def lineeditAction(self):
        self.contador += 1
        if self.contador % 2 == 0:
            self.ui.lnNome.setText("Hello World")
        else:
            self.ui.lnNome.setText("Impar: " + str(self.contador))


def main():
    app = QApplication(sys.argv)

    mainWindow = Tela()
    mainWindow.show()

    sys.exit(app.exec_())


if __name__ == '__main__':
    main()
