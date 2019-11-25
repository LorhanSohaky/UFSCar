#!/usr/bin/python3

# Exemplos de entrada

# D#raiz#123#filho1,5000|filho2,4000|filho3,1000
# D#raiz#adwadawd#filho1,5000|filho2,4000|filho3,1000
# D#filho1#345#filhox,500|filhoy,4500
# D#filhox#456#filhoa,500
# D#filhox#567#filhoa,500
# C#raiz#123
# C#filhox#567


while True:
  texto = input()
  partes = texto.split('#')

  comando = partes[0]
  id_ = partes[1]
  protocolo = partes[2]

  if 'C' == comando:
    print('condensar!')
  elif 'D'== comando:
    texto_dos_filhos = partes[3]
    partes_dos_filhos = texto_dos_filhos.split('|')
    filhos = []
    for texto_filho in partes_dos_filhos:
      partes_do_filho = texto_filho.split(',')
      filhos.append((partes_do_filho[0],float(partes_do_filho[1])))
    print('detalhar!')
  else:
    print('Ops!')