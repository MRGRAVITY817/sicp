; Exercise 1.5: 

; Given
(+ 1 1)
(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y))

; When
(test 0 (p))

; 1. Applicative-order
; (test 0 (p))
; (test 0 (p))
; (test 0 (p))
; ... ininitely expands!

; 2. Normal-order
(if (= 0 0)
  0
  (p))
;=> 0

; When I tried this on MIT Scheme Interpreter, it was running forever.
; Of course it was using applicative-order :)  
