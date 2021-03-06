;; Exercise 1.11.
;;
;; A function f is defined by the rule that f(n) = n if n<3 
;; and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3. Write a procedure
;; that computes f by means of a recursive process. Write a procedure that
;; computes f by means of an iterative process.

(define (f n)
  (if (< n 3)
    n
    (+ (f (- n 1))
       (* 2 (f (- n 2)))
       (* 3 (f (- n 3))))))

;; test
(f 1)
(f 2)
(f 3)
(f 4)
(f 5)

(define (f-iter a b c count)
  (if (= count 0)
    c
    (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))

(define (f n)
  (f-iter 2 1 0 n))

;; test
(f 1)
(f 2)
(f 3)
(f 4)
(f 5)
