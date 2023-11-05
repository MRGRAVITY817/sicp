; The number of ways to counting change, with recursive process
;
; Degenerate cases:
; - if (= change 0), 1
; - if (< change 0), 0
; - if (< kinds-of-coin 0), 0
;
; Count change of given amount of money
(define (count-change amount)
  (cc amount 5))

; Core logic for recursive process
(define (cc amount kinds-of-coin)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coin 0)) 0)
        (else (+ (cc amount (- kinds-of-coin 1))
                 (cc (- amount 
                        (first-denom kinds-of-coin))
                     kinds-of-coin)))))

; Return the largest changable coin 
; according to given kinds of coin
(define (first-denom kinds-of-coin)
  (cond ((= kinds-of-coin 1) 1)
        ((= kinds-of-coin 2) 5)
        ((= kinds-of-coin 3) 10)
        ((= kinds-of-coin 4) 25)
        ((= kinds-of-coin 5) 50)))

(count-change 100) ; 292
(count-change 120) ; 494
(count-change 342) ; 14868
