This is the Scheme process buffer.
Type C-x C-e to evaluate the expression before point.
Type C-c C-c to abort evaluation.
Type C-h m for more information.


(define (inc x) (+ 1 x))
;Value: inc

(inc 3)
;Value: 4


(define (dec x) (- x 1))
;Value: dec

(dec 3)
;Value: 2

;;; Recursive process
;;; Iterative
;; increase Linear time
(define (add a b)
  (if (= a 0)
      b
      (add (dec a) (inc b)))) 
;Value: add

(add 0 3)
;Value: 3

(add 1 3)
;Value: 4

(add 3 4)
;Value: 7

;;Recursive Procedure
;;linear increase in space and time
;;
(define (add1 a b)
  (if (= a 0)
      b
      (inc (add1 (dec a) b))))
;Value: add1

(add1 3 4)
;Value: 7

;Value: 7

