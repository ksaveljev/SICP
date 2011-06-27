;; Exercise 1.5.
;;
;; Ben Bitdiddle has invented a test to determine whether the interpreter
;; he is faced with is using applicative-order evaluation or normal-order
;; evaluation. He defines the following two procedures:

(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y))

(test 0 (p))

;; Normal:
;; (if (= 0 0) 0 (p))
;; operators first, so
;; if (= 0 0) => #t
;; immediately get 0 as a result
;;
;; Applicative:
;; operands first, so
;; (if (= 0 0) 0 (p))
;; (if (= 0 0) 0 (p))
;; (if (= 0 0) 0 (p))
;; ...
;; endless loop trying to evaluate (p)
