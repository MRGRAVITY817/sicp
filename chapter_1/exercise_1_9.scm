; Exercise 1.9
; Tell whether each of these process are iterative or recursive process.

; First implementation
(define (+ a b)
  (if (= a 0)
    b
    (inc (+ (dec a) b))))

; Evolution
; Step 1
(+ 4 5)
; Step 2
(inc 
  (+ 3 5))
; Step 3
(inc 
  (inc 
    (+ 2 5)))
; ...
; Last step
(inc 
  (inc 
    (inc 
      ;...
      (inc 0))))

9

; It has to maintain all those expanded chain.
; Hence, it's recursive.

; (2)
(define (+ a b)
  (if (= a 0)
    b
    (+ (dec a) (inc b))))

; Evolution
; Step 1
(+ 4 5)
; Step 2
(+ 3 6)
; ...
; Last step
(+ 0 9)

9

; Each step contains state of updated a b.
; So it is resumable - hence iterative.


