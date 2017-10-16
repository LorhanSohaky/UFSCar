import sys
from PyQt5.QtWidgets import QApplication, QWidget

app = QApplication(sys.argv)
widget = QWidget()

widget.resize(250, 150)
widget.setWindowTitle('Basico')

widget.show()

sys.exit(app.exec_())
