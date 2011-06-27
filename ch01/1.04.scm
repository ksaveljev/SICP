;; Exercise 1.4.
;;
;; Observe that our model of evaluation allows for combinations
;; whose operators are compound expressions. Use this observation
;; to describe the behavior of the following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; (a-plus-abs-b 1 2)
;; if (> 2 0) => #t
;; we choose first operand +
;; resulting in (+ 1 2)
;;
;; (a-plus-abs-b 1 -2)
;; if (> -2 0) => #f
;; we choose second operand -
;; resulting in (- 1 -2)

;; test
(a-plus-abs-b 1 2)
(a-plus-abs-b 1 -2)
