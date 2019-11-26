import Orcamento.Comandos.Dominio

main = do
  processarComandos

processarComandos :: No -> IO()
processarComandos = do
  linha <- getLine
  case identificarComando linha of
    Left msg -> do
      putStrLn msg
      processarComandos raiz
    Right (Detalhar idNo _ _) -> do
      putStrLn "Não está funcionando!"
      processarComandos raiz
    Right (Condensar idNo _) -> 
      case condensar idNo raiz of
        Left msg -> do
          putStrLn msg
          processarComandos raiz
        Right raiz' -> do
          processarComandos raiz'
