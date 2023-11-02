; Exercise 1.7
; Previous sqrt doesn't work well with smaller numbers.
; Make a better version.

(define (sqrt x)
  (sqrt-iter 1.0 x)) ;; guess starts with 1

;; Recursively process the guess until it's good enough
(define (sqrt-iter guess x)
  (if (good-enough? guess x) 
    guess 
    (sqrt-iter (improve guess x) x)))

;; See if guess^2 is almost equal to original number 
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) (* guess 0.001)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

; Test
(sqrt 2)
(sqrt 4)
(sqrt 0.0000012)

