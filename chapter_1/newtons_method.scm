; Guess   Quotient       Average
; 1       2/1 = 2        (2+1)/2 = 1.5
; 1.5     2/1.5 = 1.33   (1.33+1.5)/2 = 1.4167
; ...

(define (sqrt x)
  (sqrt-iter 1.0 x)) ;; guess starts with 1

;; Recursively process the guess until it's good enough
(define (sqrt-iter guess x)
  (if (good-enough? guess x) 
    guess 
    (sqrt-iter (improve guess x) x)))

;; See if guess^2 is almost equal to original number 
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

;; Test
(sqrt 1)
(sqrt 2)
(sqrt 4)
(sqrt 9)
(sqrt 1667)
