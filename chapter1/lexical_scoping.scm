
;; Lexical Scoping : 
;; Internal procedure get its value from enclosing procedure (sqrt)



(define (sqrt x)
  (define (good-enough? previous-guess guess)
    (< (abs (/ (- guess previous-guess ) guess)) 0.00000000001))
  (define (improve guess )
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
   (if (good-enough? guess (improve guess ))
       guess
      (sqrt-iter (improve guess) )))

  (sqrt-iter 1.0))


(define (abs x)
  (if (< x 0) (- x) x))

(define (average x y)
  (/ (+ x y) 2))

(sqrt 4)
