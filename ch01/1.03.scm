;; Exercise 1.3.
;;
;; Define a procedure that takes three numbers as arguments and
;; returns the sum of the squares of the two larger numbers.

(define (square a) (* a a))

(define (sum-of-squares a b)
  (+ (square a) (square b)))

(define (sum-of-two-largest-squares a b c)
  (cond
    ((and (< a b) (< a c)) (sum-of-squares b c))
    ((and (< b a) (< b c)) (sum-of-squares a c))
    (else (sum-of-squares a b))))

;; test
(sum-of-two-largest-squares 1 2 3)
(sum-of-two-largest-squares 1 3 2)
(sum-of-two-largest-squares 2 1 3)
(sum-of-two-largest-squares 2 3 1)
(sum-of-two-largest-squares 3 1 2)
(sum-of-two-largest-squares 3 2 1)
