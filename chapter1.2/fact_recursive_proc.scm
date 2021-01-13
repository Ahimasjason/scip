
;; Recursive Procedure
;; It works on substitution order the there is linear time and space complexity

(define (factorial n)
  (if (> n 1) (* n (factorial (- n 1)) ) n))



(factorial 6)
(factorial 3)
(factorial 5)
