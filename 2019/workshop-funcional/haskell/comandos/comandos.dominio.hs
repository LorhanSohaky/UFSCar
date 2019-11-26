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

  condensar :: IDNo -> No -> Either String No
  condensar idNo no = 
    case no of
      (Folha idNo' _) | idNo' == idNo ->
        Left "Nó já condensado!"
      (Folha _ _) ->
        Right no
      (Intermediario idNo' filhos) | idNo' == idNo ->
        Right $ Folha idNo' (valorDos filhos)
      (Intermediario _ filhos) ->
        case (mapM (condensar idNo') filhos) of
          Right filhos' -> Right $ Intermediario idNo' filhos'
          Left msg -> Left msg

  valorDos :: [No] -> Float
  valorDos [] = 0
  valorDos (x:xs) =
    let somaDosXs = valorDos xs
    in case x of
      Folha _ valor -> valor + somaDosXs
      Intermediario _ filhos -> (valorDos filhos) + somaDosXs
    