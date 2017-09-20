# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'main_form.ui'
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
        self.formLayout = QtWidgets.QFormLayout(self.centralwidget)
        self.formLayout.setObjectName("formLayout")
        self.nome = QtWidgets.QLineEdit(self.centralwidget)
        self.nome.setObjectName("nome")
        self.formLayout.setWidget(1, QtWidgets.QFormLayout.LabelRole, self.nome)
        self.label = QtWidgets.QLabel(self.centralwidget)
        self.label.setObjectName("label")
        self.formLayout.setWidget(0, QtWidgets.QFormLayout.LabelRole, self.label)
        self.label_2 = QtWidgets.QLabel(self.centralwidget)
        self.label_2.setObjectName("label_2")
        self.formLayout.setWidget(2, QtWidgets.QFormLayout.LabelRole, self.label_2)
        self.idade = QtWidgets.QLineEdit(self.centralwidget)
        self.idade.setObjectName("idade")
        self.formLayout.setWidget(3, QtWidgets.QFormLayout.LabelRole, self.idade)
        self.label_3 = QtWidgets.QLabel(self.centralwidget)
        self.label_3.setObjectName("label_3")
        self.formLayout.setWidget(4, QtWidgets.QFormLayout.LabelRole, self.label_3)
        self.cpf = QtWidgets.QLineEdit(self.centralwidget)
        self.cpf.setObjectName("cpf")
        self.formLayout.setWidget(5, QtWidgets.QFormLayout.LabelRole, self.cpf)
        self.btnOk = QtWidgets.QPushButton(self.centralwidget)
        self.btnOk.setObjectName("btnOk")
        self.formLayout.setWidget(6, QtWidgets.QFormLayout.FieldRole, self.btnOk)
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
        self.label.setText(_translate("MainWindow", "Nome"))
        self.label_2.setText(_translate("MainWindow", "Idade"))
        self.label_3.setText(_translate("MainWindow", "CPF"))
        self.btnOk.setText(_translate("MainWindow", "OK"))

