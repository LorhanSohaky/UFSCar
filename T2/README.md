Aluno | R.A.
-- | ---
Lorhan Sohaky | 740951
Thaís Dordan | 
# Problema 1
### Algoritmo Geral

A ideia para resolver o problema proposto é:

1. Desparentizar a lista
2. Contar a quantidade de vezes que cada elemento aparece na lista desparentizada
3. Produzir uma saída da seguinte maneira `((Átomo1 Quantidade) (Átomo2 Quantidade) ...)`

#### `Desparentiza (Lista)`
Recebe como entrada uma lista `Lista` e move todos os subníveis desse lista para o primeiro nível. Retorna uma lista com todos os elementos no primeiro nível.

#### `esta-em (A Lista)`
Recebe como entrada um átomo `A` e uma lista `Lista` da seguinte maneira `((Átomo1 Quantidade) (Átomo2 Quantidade) ...)` e verifica se esse átomo está na lista. Retorna `true` para caso o elemento esteja na lista e `nil` caso contrário.

#### `Conta (Lista)`
Recebe como entrada uma lista `Lista`, desparentiza a lista usando a função `Desparentiza` e logo após, para cada átomo dessa lista, conta quantas vezes ele aparece na mesma. Retorna uma lista no formato `((Átomo1 Quantidade) (Átomo2 Quantidade) ...)`. Antes de realizar a contagem, verifica se o átomo da `Lista` já está na lista que irá ser retornada, utlizando a função `esta-em`.

### Código implementado
```lisp
(defun Desparentiza (Lista)
    (cond ((null Lista) nil)
        ((or (not (listp (car Lista))) (null (car Lista))) 
            (if (listp (car Lista)) 
                (cons () (Desparentiza (cdr Lista))) 
            (cons (car Lista) (Desparentiza (cdr Lista)))))
        (t (append (Desparentiza (car Lista)) (Desparentiza (cdr Lista))))))
        
(defun esta-em (A Lista)
    (cond ((null Lista) nil)
        ((equal (caar Lista) A) t)
        (t (esta-em A (cdr Lista)))))

(defun Conta (Lista)
    (progn (setq Lista (Desparentiza Lista))
        (do ((Aux Lista (cdr Aux)) (res ()))
            ((null Aux) res)
            (if (not (esta-em (car Aux) res))
                (setq res (append res (list (list (car Aux) 
                    (do ((Aux2 Aux (cdr Aux2)) (R 0))
                        ((null Aux2) R)
                        (if (equal (car Aux) (car Aux2))
                            (setq R (+ R 1))))))))))))
```

# Resultado dos testes
![Casos de testes](prints/teste1.jpg)
