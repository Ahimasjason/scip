



;; Iterative Exponentation
;; Sucessive Squaring
;; Logarithmic number of steps




 (define (exp-helper b n pr )
   (cond ((= n 0) pr)
	 ((even? n) (exp-helper (square b) (/ n 2) pr))
	 (else (exp-helper b (- n 1) (* b  pr)))))


(exp-helper 2 6 1)
