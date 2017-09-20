from PyQt5.QtWidgets import QMessageBox


def showDialog(titulo, texto, icone):
    msg = QMessageBox()

    msg.setIcon(icone)

    msg.setText(texto)
    msg.setWindowTitle(titulo)
    msg.setStandardButtons(QMessageBox.Ok)
    msg.exec_()
