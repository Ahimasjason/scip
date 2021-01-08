


;; Determine whether the interpreter using Applicative-Order evolution (OR)
;; Normal-Order evolution




(define (p) (p))


(define (test x y)
  (if (= x 0) 0 y))


(test 0 (p)) ;; recursion in applicative order 0 in Normal order

;; Normal-Order:
;;=============
;;     would not evalute the operand expression utill their value is needed,
;;Applicative-Order:
;;==================
;;   Evalute the arguments and apply

