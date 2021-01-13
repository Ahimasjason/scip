
;;method for adding two positive integers (inc) increase by 1 (dec) decrease by 1
;;
;;
;;


(define (inc x)
  (+   x 1))

(inc 1)

(define (dec x)
  (- x 1))

(dec 2)


(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a)  b))))


(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))



(+ 3 4)

