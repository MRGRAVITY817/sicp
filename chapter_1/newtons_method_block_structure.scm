; Same sqrt, yet all the helper procedures
; are included in sqrt.

(define (sqrt x)
  (define (sqrt-iter guess)
    (if (good-enough? guess) 
      guess 
      (sqrt-iter (improve guess))))

  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))

  (define (improve guess)
    (average guess (/ x guess)))

  (define (average x y)
    (/ (+ x y) 2))

  (sqrt-iter 1.0 )) 

;; Test
(sqrt 1)
(sqrt 2)
(sqrt 4)
(sqrt 9)
(sqrt 1667)
(sqrt 0.0000012)
