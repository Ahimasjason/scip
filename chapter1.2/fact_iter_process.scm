

;; Recurstive Process
;; Iterative


(define (fact-iter product counter num-time)
  (if (> counter num-time)
      product
      (fact-iter
       (*  counter product)
       (+ counter 1)
       num-time)))

(define (factorial n)
  (fact-iter 1 1 n))

