


;; p = (p * p + q) * q
;; q = (2 * p * q) + (q * q)  
;;

(define (fib n)
  (fib-iter 1 0 0 1 n))



(define (fib-iter a b p q count)
  (cond ((= count 0) b)
	((even? count)
	 (fib-iter
	  a
	  b
	  (+ (* p p) (* q q))
	  (+ (* 2 p q) (* q q))
	  (/ count 2)
	  ))
	(else (fib-iter (+ (* p q) (* a q) (* a p))
			(+ (* b p) (* a q))
			p
			q
			(- count 1)))))


(fib 7)
