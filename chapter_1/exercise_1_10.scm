; Exercise 1.10
; Ackermann's function

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(A 1 10) ; 1024
(A 2 4) ; 65536
(A 3 3) ; 65536

(define (f n) (A 0 n))
; (* 2 n)

(f 1) ; 2
(f 2) ; 4
(f 3) ; 6
(f 4) ; 8

(define (g n) (A 1 n))
; (expt 2 n)

(g 1) ; 2
(g 2) ; 4
(g 3) ; 8
(g 4) ; 16

(define (h n) (A 2 n))
; 0 for n=0, g^{n-1}(2) for n>0

(h 1) ; 2
(h 2) ; 4
(h 3) ; 16
(h 4) ; 65536

(define (k n) (* 5 n n))

