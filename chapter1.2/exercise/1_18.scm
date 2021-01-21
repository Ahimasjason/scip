(define (halve x)
  (/ x 2))


(define (double x)
  (+ x x))


(define (mul a b pr)
  (cond ((= b 0 ) pr)
	((even? b) (mul (double a) (halve b) pr))
	(else (mul a (- b 1) (+ a pr)))))

(mul 3 4 0)
  
