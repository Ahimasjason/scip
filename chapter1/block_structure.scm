

;; Procedure as a Black Box Abstruction
;;  Localizing the sub procedure
;; Procedure to have internal definition that are local to the procedure


(define (sqrt x)
  (define (good-enough? previous-guess guess)
    (< (abs (/ (- guess previous-guess ) guess)) 0.00000000001))
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (sqrt-iter guess x)
   (if (good-enough? guess (improve guess x))
       guess
      (sqrt-iter (improve guess x) x)))

  (sqrt-iter 1.0 x))


(define (abs x)
  (if (< x 0) (- x) x))

(define (average x y)
  (/ (+ x y) 2))

(sqrt 9)
