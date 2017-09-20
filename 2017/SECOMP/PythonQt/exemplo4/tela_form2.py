import sys
from PyQt5.QtWidgets import QMainWindow, QApplication, QMessageBox
from PyQt5.QtCore import Qt

from form2 import Ui_MainWindow


class form2(QMainWindow):
    def __init__(self, nome, idade, cpf, parent=None):
        super(form2, self).__init__()
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)

        self.setAttribute(Qt.WA_DeleteOnClose)

        self.ui.nome.setText(nome)
        self.ui.idade.setText(cpf)
        self.ui.cpf.setText(cpf)


def main():
    app = QApplication(sys.argv)
    mw = form2()

    mw.show()

    sys.exit(app.exec_())


if __name__ == '__main__':
    main()
