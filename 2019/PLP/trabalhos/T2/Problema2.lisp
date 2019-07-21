(defun esta-em (A Lista)
        (cond ((null Lista) nil)
            ((not (null (cdr Lista))) (esta-em A (cdr Lista)))
            ((equal (cadar Lista) A) A)))

(defun Conta (Lista)
    (do ((Aux Lista (cdr Aux)) (res ()))
        ((null Aux) res)
        (if (not (esta-em (car Aux) res))
            (setq res (append res (list (list 
                (do ((Aux2 Aux (cdr Aux2)) (R 0))
                    ((or (null Aux2) (not (equal (car Aux) (car Aux2)))) R)
                    (if (equal (car Aux) (car Aux2))
                        (setq R (+ R 1))))  (car Aux))))))))
