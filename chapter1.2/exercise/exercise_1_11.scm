
;; n if n < 3 else f(n - 1) + f(n-2)


;; Recursive process
(define (funct n)
  (if (< n 3)
      n
      
       (+ (funct (- n 1))
	  (* 2 (funct (- n 2)))
	  (* 3 (funct (- n 3)))
	  )))

(funct 4)




;;Iterative Process

(define (f n)
  (if (< n 3)
      n
      (f-iter 2 1 0 n)))

(define (f-iter a b c n)
  (if (< n 3)
      a
      (f-iter (+ a (* 2 b) (* 3 c)) a b (- n 1))))

(f 3)


       
