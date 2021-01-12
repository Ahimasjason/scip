

;; Newtons method for cube root 
;; y -> Approximation
;; (x / y*y) + 2y / 3
					;

(define (cube-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (cube-iter (improve guess x) x)))


(define (improve guess x)
  (average (/ x (square guess)) guess))

(define (abs x)
  (if (< x 0) (- x) x))

(define (average x y)
  (/ (+ x (* 2 y)) 3))

(define (square x) (* x x))

(define (good-enough? previous-guess guess)
  (display "previous-guess: ")
  (display previous-guess)
  (display ", guess: ")
  (display guess)
  (display "\n")
  (< (abs (/ (- guess previous-guess ) guess)) 0.00000000001))

(define (cube x)
  (cube-iter 1.0 x))


