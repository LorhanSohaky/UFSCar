from showDialog import showDialog
from labelClick import ClickableLabel
import sys
from PyQt5.QtWidgets import QApplication, QWidget


def Click(pos):
    print(pos)
    showDialog("Pos", str(pos))


app = QApplication(sys.argv)
widget = QWidget()
widget.resize(250, 150)

label = ClickableLabel(10, widget)
label.setText("Label aqui fiao")
label.sig_send.connect(Click)

widget.show()
sys.exit(app.exec_())
