; Computing Fibonacci Number with Tree recursion
(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))

; It's slow, because it does redundant computations.
(fib 13)

; Alternative implementation with iterative process.
(define (fib n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (if (= count 0)
    b 
    (fib-iter (+ a b) a (- count 1))))

; Much faster
(fib 144)

