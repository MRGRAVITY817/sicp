; Exercise 1.13
; Prove Fib(n) is the closest integer of (phi^n / sqrt(5)).

(define (phi)
  (/ (+ 1 (sqrt 5)) 2))

(define (fib n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (if (= count 0)
    b 
    (fib-iter (+ a b) a (- count 1))))

(define (phi-fib n)
  (/ (expt (phi) n) (sqrt 5)))

(fib 12) ; 144
(phi-fib 12) ; 144.0013888754932

; For mathematical prove, go to this link
; https://sicp-solutions.net/post/sicp-solution-exercise-1-13/
