#lang sicp

(define (sum-of-squares-of-2-larger-numbers a b c) 
     (+ (square (get-first-largest-number a b c))
        (square (get-second-largest-number a b c))))


(define (get-first-largest-number a b c) 
  (cond ((and (>= a b) (>= a c)) a)
        ((and (>= b a) (>= b c)) b)
        (else c)))

(define (get-second-largest-number a b c) 
  (cond ((and (>= a b) (<= a c)) a)
        ((and (>= b a) (<= b c)) b)
        (else c)))

(define (square a) (* a a))

; tests
(get-first-largest-number 1 2 3)
(get-second-largest-number 1 2 3)
(square 3)
(sum-of-squares-of-2-larger-numbers 1 2 3)