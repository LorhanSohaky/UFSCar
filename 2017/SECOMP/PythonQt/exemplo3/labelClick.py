from PyQt5.QtWidgets import QLabel
from PyQt5.QtCore import pyqtSignal


class ClickableLabel(QLabel):
    sig_send = pyqtSignal(int)

    def __init__(self, pos, parent=None):
        super(ClickableLabel, self).__init__(parent)
        self.pos = pos

    def mousePressEvent(self, event):
        QLabel.mousePressEvent(self, event)
        self.sig_send.emit(self.pos)
