
;;      | x if x > 0
;;|x| = | 0 if x = 0
;;      |-x if x < 0
;;      |



(define (abs-cond x)
  (cond ((> x 0) x)
	((= x 0) 0)
	((< x 0 ) (- x)) ;; if -1 then addinf -1 -1 will be plus 1
  )
  )

(define (abs-cond1 x)
  (cond ((< x 0 ) (- x))
	(else x)))


(define (abs-if x)
  (if (< x 0 ) ;; (if <predicate> <consequent> <alternative>)
      (- x) ;; here we need to evalute the value
      x  ;; return the x 
      )
  )
      

