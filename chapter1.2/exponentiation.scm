
(define (expt b n)
  (display b )
  (if (= n 0)
      1
      (* b (expt b (-  n 1)))))


(expt 2 6)

(define (exp-iter b n)
  (define (iter-help b count prod)
    (if (= count 0)
	prod
	(iter-help b (- count 1)  (* b prod))))
  (iter-help b n 1))

(exp-iter 2 6)

(even? 3)

(define (fast-expt b n)
  (display  n )
  (cond ((= n 0) 1)
	((even? n) (square (fast-expt b (/ n 2))))
	(else (* b (fast-expt b (- n 1))))))

(fast-expt 2 2)


		    
