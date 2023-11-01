; Exercise 1.5: 

; Given
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; Building sqrt with new-if
(define (sqrt x)
  (sqrt-iter 1.0 x)) 

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x) 
    guess 
    (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

;; It will reach maximum recursion depth!
;; That is because unlike special form `if`, which only evaluates the truth consequence,  
;; `new-if` is evaluating both if and else clause.
