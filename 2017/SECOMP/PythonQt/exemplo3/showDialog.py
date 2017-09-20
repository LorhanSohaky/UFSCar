from PyQt5.QtWidgets import QMessageBox


def showDialog(titulo, texto):
    msg = QMessageBox()

    msg.setIcon(QMessageBox.Critical)

    msg.setText(texto)
    msg.setTitle(titulo)
    msg.setStandardButtons(QMessageBox.Ok)
    msg.exec_()
