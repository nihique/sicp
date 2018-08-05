#lang sicp

(define (interpreted x) 
  (display "interpreted: ") (display x)  (newline))

(define (expected x) 
  (display "expected:    ") (display x)  (newline)
  (newline))

(interpreted 10)
(expected 10)

(interpreted (+ 5 3 4))
(expected 12)

(interpreted (- 9 1))
(expected 8)

(interpreted(/ 6 2))
(expected 3)

(interpreted (+ (* 2 4) (- 4 6)))
(expected 6)

(define a 3)
(interpreted a)
(expected 3)

(define b (+ a 1))
(interpreted b)
(expected 4)

(interpreted (+ a b (* a b)))
(expected 19)

(interpreted(= a b))
(expected #f)

(interpreted (if (and (> b a) (< b (* a b)))
                b
                a))
(expected 4)

(interpreted (cond 
              ((= a 4) 6)
              ((= b 4) (+ 6 7 a))
              (else 25)))
(expected 16)

(interpreted (+ 2 (if (> b a) b a)))
(expected 6)

(interpreted (* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1)))
(expected 16)