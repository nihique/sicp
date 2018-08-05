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

;;; (+ (* 2 4) (- 4 6))
;;; (define a 3)
;;; (define b (+ a 1))
;;; (+ a b (* a b))
;;; (= a b)
;;; (if (and (> b a) (< b (* a b)))
;;;     b
;;;     a)
;;; (cond ((= a 4) 6)
;;;       ((= b 4) (+ 6 7 a))
;;;       (else 25))
;;; (+ 2 (if (> b a) b a))
;;; (* (cond ((> a b) a)
;;;          ((< a b) b)
;;;          (else -1))
;;;    (+ a 1))