#lang sicp

(define (sum-of-squares-of-2-larger-numbers a b c) 
  (+ (square (get-first-largest-number a b c))
     (square (get-second-largest-number a b c))))


(define (get-first-largest-number a b c) 
  (cond ((and (>= a b) (>= a c)) a)
        ((and (>= b a) (>= b c)) b)
        (else c)))

(define (get-second-largest-number a b c) 
  (cond ((or (and (>= a b) (<= a c))
             (and (<= a b) (>= a c)))
         a)
        ((or (and (>= b a) (<= b c))
             (and (<= b a) (>= b c)))
         b)
        (else c)))

(define (square a) (* a a))

; tests
(sum-of-squares-of-2-larger-numbers 5 3 2)
(sum-of-squares-of-2-larger-numbers 5 2 3)
(sum-of-squares-of-2-larger-numbers 2 3 5)
(sum-of-squares-of-2-larger-numbers 8 -3 -27)