; Exercise 1.11
; Write both recursive/iterative process for this function.
;
; f(n) = n if n < 3
;      = f(n-1) + 2f(n-2) + 3f(n-3) if n >= 3

; Recursive approach
(define (f n)
  (if (< n 3)
    n
    (+ (f (- n 1)) 
       (* 2 (f (- n 2)))
       (* 3 (f (- n 3))))))

; Test
(f 10) ; 1892
(f 122) ; Cannot compute due to memory constraints

; Iterative approach
;
; Basic transform:
;   a <- (a + 2b + 3c)
;   b <- a
;   c <- b
;
; Starting condition:
;   a = 2
;   b = 1 
;   c = 0
;
(define (f n)
  (define (f-iter a b c count)
    (cond ((< n 3) n)
          ((<= count 0) a)
          (else (f-iter (+ a 
                           (* 2 b) 
                           (* 3 c)) 
                        a 
                        b 
                        (- count 1)))))

  (f-iter 2 1 0 (- n 2)))

(f 122) ; 2183756027454887258602508868655074003807518852

;; Conclusion:
;; As you can see in the code, each approach has pros and cons
;; - Recursive: Easy to map the mathematical logic, but might be inefficient.
;; - Iterative: Efficient, but might be hard to map to original logic.
