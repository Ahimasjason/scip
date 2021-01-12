

;; How guess changes from one iteration to the next and stop when change
;; is very small
;;
;;  (guess + x/ guess ) / 2
(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x) x)))


(define (improve guess x)
  (average guess (/ x guess)))

(define (abs x)
  (if (< x 0) (- x) x))

(define (average x y)
  (/ (+ x y) 2))

(define (square x) (* x x))

(define (good-enough? previous-guess guess)
  (display "previous-guess: ")
  (display previous-guess)
  (display ", guess: ")
  (display guess)
  (display "\n")
  (< (abs (/ (- guess previous-guess ) guess)) 0.00000000001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

 
(sqrt 0.00000000001)
