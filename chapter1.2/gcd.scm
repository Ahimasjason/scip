

;; If r is reminder when a is divided by b
;; then common divisors of a abd b are precosely the same as common div
;; of b, r




(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))


(gcd 3 6)

