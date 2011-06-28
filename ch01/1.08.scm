;; Exercise 1.8.
;;
;; Newton's method for cube roots is based on the fact that if y is an
;; approximation to the cube root of x, then a better approximation is
;; given by the value
;;
;;           x / (y * y) + 2 * y
;;           -------------------
;;                    3
;;
;; Use this formula to implement a cube-root procedure analogous to the
;; square-root procedure.

(define (square x) (* x x))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? old-guess guess)
  (< (abs (- old-guess guess)) 0.001))

(define (cube-root old-guess guess x)
  (if (good-enough? old-guess guess)
    guess
    (cube-root guess
               (improve guess x)
               x)))

(define (cubert x)
  (cube-root 0.0 1.0 x))

;; test
(cubert 27)
(cubert 9)
(cubert 3)
(cubert 1000)
