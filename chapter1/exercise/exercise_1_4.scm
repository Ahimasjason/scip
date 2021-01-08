

;;

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b)) ;; (- 1 -1) this is what happening ..


(define (a-minus-abs-b a b)
    (+ a b))
