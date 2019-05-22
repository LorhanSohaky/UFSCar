;função reversa do exercício 1
(defun reversa (lista)
	(cond	((null lista) NILL)
			((null  (cdr lista)) lista)
			(t (append (reversa(cdr lista )) (list (car lista))))
	)
)

(defun palindromop (lista)
	(equal lista (reversa lista))
)
