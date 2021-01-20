

(define (mul a b)
  (if (= b 0)
      0
      (+ a (* a (- b 1)))))


(mul 2 8)
