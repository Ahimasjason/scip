


;;; Pascal Triangle



(define (pascal r c)
  (if (or (= c 1) (= r c))
      1
      (+ (pascal (- r 1) (- c 1))
	 (pascal (- r 1) c))))


(define (pascal2 r c)
  (cond ((< r c) 0)
	((or (= c 1) (= c r)) 1)
        (else (+ (pascal (- r 1) c)
		 (pascal (-r 1) (- c 1))))))
	      

	 
(pascal 2 2)
(pascal 5 4)
