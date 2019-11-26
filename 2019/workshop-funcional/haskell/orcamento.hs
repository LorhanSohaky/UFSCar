import Orcamento.Comandos.Dominio

main = do
  processarComandos

processarComandos = do
  linha <- getLine
  print (identificarComando linha)
  processarComandos
