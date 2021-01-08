

;; Determine whether the interpreter using applicative-order or normal-order
;; evalution


(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

