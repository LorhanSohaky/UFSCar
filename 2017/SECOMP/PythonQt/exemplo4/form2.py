# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'form2.ui'
#
# Created by: PyQt5 UI code generator 5.9
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(800, 600)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.verticalLayout = QtWidgets.QVBoxLayout(self.centralwidget)
        self.verticalLayout.setObjectName("verticalLayout")
        self.nome = QtWidgets.QLabel(self.centralwidget)
        self.nome.setObjectName("nome")
        self.verticalLayout.addWidget(self.nome)
        self.idade = QtWidgets.QLabel(self.centralwidget)
        self.idade.setObjectName("idade")
        self.verticalLayout.addWidget(self.idade)
        self.cpf = QtWidgets.QLabel(self.centralwidget)
        self.cpf.setObjectName("cpf")
        self.verticalLayout.addWidget(self.cpf)
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 800, 23))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "MainWindow"))
        self.nome.setText(_translate("MainWindow", "Nome"))
        self.idade.setText(_translate("MainWindow", "Idade"))
        self.cpf.setText(_translate("MainWindow", "CPF"))

