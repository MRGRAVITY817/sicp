; Exercise 1.8
; Implement Cube Root 

(define (cube-root x)
  (cube-root-iter 1.0 x))

(define (cube-root-iter guess x)
  ; (pp guess)
  (if (good-enough? guess x)
    guess
    (cube-root-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (improve guess x) 
  (/ 
    (+ 
      (/ x (square guess)) 
      (* 2 guess)) 
    3))

; Test
(cube-root 1)
(cube-root 8)
