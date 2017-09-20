import sys
from PyQt5.QtWidgets import QMainWindow, QApplication, QMessageBox

from main_form import Ui_MainWindow
from showDialog import showDialog

import tela_form2


class form1(QMainWindow):
    def __init__(self, parent=None):
        super(form1, self).__init__()
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        self.connectSignal()

    def connectSignal(self):
        self.ui.btnOk.clicked.connect(self.some_action)

    def validaCampos(self):
        texto = ""

        if not (self.ui.nome.text()):
            texto += "Nome\n"
        if not (self.ui.idade.text()):
            texto += "Idade\n"
        if not (self.ui.cpf.text()):
            texto += "CPF\n"

        return texto

    def some_action(self):
        campos = self.validaCampos()
        if (campos == ""):
            showDialog("Sucesso", "Deu tudo certo" + campos,
                       QMessageBox.Information)
            self.form2 = tela_form2.form2(self.ui.nome.text(),
                                          self.ui.idade.text(),
                                          self.ui.cpf.text())
            self.form2.show()
        else:
            showDialog(
                "Error",
                "Todos os campos devem ser preenchidos. Campo(s) a ser(em) preenchido(s):\n"
                + campos, QMessageBox.Critical)


def main():
    app = QApplication(sys.argv)
    mw = form1()
    mw.show()

    sys.exit(app.exec_())


if __name__ == '__main__':
    main()
