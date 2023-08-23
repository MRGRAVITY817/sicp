; Exercise 1.3: 
; Define a procedure that takes three numbers as arguments 
; and returns the sum of the squares of the two larger numbers.

(define (square a) (* a a))

(define (sum-of-squares-of-larger-two a b c)
  (if (> c a) 
     (if (> a b)
        (+ (square a) (square c))
        (+ (square b) (square c)))
     (if (> c b)
        (+ (square a) (square c))
        (+ (square b) (square a)))))

; Test codes
(= (square 1) 1)
(= (square 2) 4)
(= (square 3) 9)

(= (sum-of-squares-of-larger-two 1 1 1) 2)
(= (sum-of-squares-of-larger-two 1 2 1) 5)
(= (sum-of-squares-of-larger-two 2 1 1) 5)
(= (sum-of-squares-of-larger-two 2 1 1) 5)
(= (sum-of-squares-of-larger-two 1 1 2) 5)
(= (sum-of-squares-of-larger-two 3 1 2) 13)
(= (sum-of-squares-of-larger-two 1 3 2) 13)
(= (sum-of-squares-of-larger-two 2 1 3) 13)
