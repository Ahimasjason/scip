
;; n if n < 3 else f(n - 1) + f(n-2)


;; Recursive process
(define (funct n)
  (if (< n 3)
      n
      
       (+ (funct (- n 1))
	  (* 2 (funct (- n 2)))
	  (* 3 (funct (- n 3)))
	  )))

(funct 10)

;;Iterative Process

(define (f n)
  (define f-iter n a b c)
  (if (= n 0)
      a
      (f-iter (- n 1)
	      (+ a (* 2 b) (* 3 c))
	      a
	      b)
      )
  (if (< n 3)
      n 
      (f-iter n 0 1 2)))

(f 10)
      


       
