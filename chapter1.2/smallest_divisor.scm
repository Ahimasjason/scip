

(define (smallest-divisor n)
  (find-divisor n 2))


(define (find-divisor n test-divisor)
  (display test-divisor)
  (cond ((> (* test-divisor test-divisor) n ) n)
	((divides? test-divisor n) test-divisor)
	(else(find-divisor n (+ test-divisor 1)))))


(define (divides? a b)
  (=(remainder a b) 0))

(smallest-divisor 12)
