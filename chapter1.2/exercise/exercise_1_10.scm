

;; Ackermann Procedure


(define (A x y)
  (cond ((= y 0) 0)
	((= x 0) (* y 2))
	((= y 1) 2)
	(else (A (- x 1)
		 (A x (- y 1))))))



(A 1 10) 

(A 2 4)

(A 3 3)

;; here x is o so it will return 2*n
(define (f n) (A 0 n)) 

;;here x is 1 it will return n times 2 -> 2^n
(define (g n) (A 1 n))

;;; really long one 
(define (h n) (A 2 n))

(define (k n) (* 5 n n))

(k 2)

(f 2)
