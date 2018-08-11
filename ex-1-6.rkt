#lang sicp

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

; Question: 
;   Why this 'new-if' will not work? 
;   Why we need special 'if' form instead simple procedure?

; => because LISP is using applicative-order evaluation
;    that means it will always evaluate both 'then-clause' and 'else-clause'
;    arguments, which will lead to infinite recursion =>
;    it will always execute '(sqrt-iter (improve guess x) x)'
