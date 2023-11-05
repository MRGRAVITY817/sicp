; Exercise 1.12
; Pascal's Triangle
;
; 1
; 1 1
; 1 2 1
; 1 3 3 1
; 1 4 6 4 1
; ...
; f (row, col) = 1, if row = 1 or col = row
;              = f (row-1, col-1) + f (row-1, col), if row >= 3
(define (pascal-tri row col)
  (if (or (= col 1) (= col row))
    1 
    (+ (pascal-tri (- row 1) (- col 1)) 
       (pascal-tri (- row 1) col))))

; Test
(= (pascal-tri 1 1) 1) ; #t
(= (pascal-tri 2 1) 1) ; #t
(= (pascal-tri 2 2) 1) ; #t
(= (pascal-tri 3 1) 1) ; #t
(= (pascal-tri 3 2) 2) ; #t
(= (pascal-tri 3 3) 1) ; #t
(= (pascal-tri 4 1) 1) ; #t
(= (pascal-tri 4 2) 3) ; #t
(= (pascal-tri 4 3) 3) ; #t
(= (pascal-tri 4 4) 1) ; #t
(= (pascal-tri 5 1) 1) ; #t
(= (pascal-tri 5 2) 4) ; #t
(= (pascal-tri 5 3) 6) ; #t
(= (pascal-tri 5 4) 4) ; #t
(= (pascal-tri 5 5) 1) ; #t

