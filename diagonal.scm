(define matrix-to-list
  (lambda (m)
    (if (null? m)
        '()
        (append (car m) (matrix-to-list(cdr m))))))
(define findinlist
  (lambda (l n)
    (if (null? l)
        '()
        (if (= n 0)
            (list (car l))
            (findinlist (cdr l) (- n 1))))))
(define findn
  (lambda (l n w)
    (if (or (null? l)(> n w))
        '()
        (append (findinlist l (+ (* n w) n)) (findn l (+ n 1) w) ))))
(define diagonal
  (lambda (m)
    (if (null? m)
        '()
        (findn (matrix-to-list m) 0 (length (car m))))))
