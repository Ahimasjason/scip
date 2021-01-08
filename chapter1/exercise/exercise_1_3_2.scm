
(>= 1 2)



(define (max-two a b c)
  ( if (>= a b)
    (if (>= b c) (list a b) (list a c))
    (if (>= a c) (list b a) (list b c))))
