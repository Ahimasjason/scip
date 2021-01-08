
;; Define a  procedure that takes three numbers as arguments
;; returns the sum of the squares of the two larger numbers


(define (square x) (* x x))


(define (square-two a b)
  (+ (square a) (square b)))


(define (max a b)
  (if (> a b) a b))


(define (>= a b)
  (or (> a b) (= a b)))

(define (large-sum-square a b c)

  (cond ((and (<= a b) (<= a c)) ( square-two b c))

	((and (<= b a) (<= b c)) (square-two a c))

	((and (<= c a) (<= c b)) (square-two a b))
	)
 )




