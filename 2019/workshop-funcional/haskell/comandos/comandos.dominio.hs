module Orcamento.Comandos.Dominio 
  (
    identificarComando
  ) where
  
  import Data.List.Split 

  type IDNo = String
  type NumeroDoProtocolo = String
  type Valor = Float

  data No = 
    Intermediario IDNo [No] |
    Folha IDNo Valor

  data Comando = 
    Detalhar IDNo NumeroDoProtocolo [No] |
    Condensar IDNo NumeroDoProtocolo

  instance Show Comando where
    show (Condensar id _) = "Condensar " ++ id
    show (Detalhar id _ _) = "Detalhar " ++ id

  identificarComando :: String -> Either String Comando

  identificarComando linha =
    case splitOn "#" linha of
      (cmd:idNo:protocolo:[]) | cmd == "C" ->
        Right $ Condensar idNo protocolo
      (cmd:idNo:protocolo:textDosFilhos:[]) | cmd == "D" ->
        Right $ Detalhar idNo protocolo []
      _ -> Left "Comando desconhecido!"

