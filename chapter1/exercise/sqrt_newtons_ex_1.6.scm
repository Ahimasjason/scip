



(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))


(define (improve guess x)
  (average guess (/ x guess)))

(define (abs x)
  (if (< x 0) (- x) x))

(define (average x y)
  (/ (+ x y) 2))

(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))


;; this function uses applicative order ( evalute the arguments and apply)
;; so the else clause will evaluate with same argument again and again
;; resulting in recusion. 

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

 
(sqrt 25)
