(defun apaga (A L)
	(cond	((null L) nil)
			((equal A (car L)) (apaga A (cdr L)))
			(t (cons (car L) (apaga A (cdr L))))
	)
)