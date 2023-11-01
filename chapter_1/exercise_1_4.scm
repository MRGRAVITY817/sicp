; Exercise 1.4: 
; Observe that our model of evaluation allows for combinations whose
; operators are compound expressions.
; Use this observation to describe the behavior of the following procedure.

(define (a-plus-abs-b a b) 
  ((if (> a b) + -) a b))

; If a is larger than b, then a + b
; Else, a - b.
