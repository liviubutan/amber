;; Liviu Butan

;; f1...fn
(define add-one
  (lambda (x)
    (+ 1 x)))
(define add-two
  (lambda (x)
    (+ 2 x)))
(define add-three
  (lambda (x)
    (+ 3 x)))

(define subtract-one
  (lambda (x)
    (- x 1)))
(define subtract-two
  (lambda (x)
    (- x 2)))
(define subtract-three
  (lambda (x)
    (- x 3)))

(define multiply-by-two
  (lambda (x)
    (* x 2)))
(define multiply-by-three
  (lambda (x)
    (* x 3)))

(define divide-by-two
  (lambda (x)
    (/ x 2)))
(define divide-by-three
  (lambda (x)
    (/ x 3)))

;; apply functions to value
(define apply-functions
  (lambda (i fns)
    (map 
     (lambda (x) 
       (eval (list x i)))
     fns)))

;; tests
(apply-functions 3 '(add-one multiply-by-two subtract-three))
(apply-functions 7 '(subtract-three add-two multiply-by-three))
(apply-functions 2 '((lambda(x) (+ x 7)) (lambda(x) (* x 13))))
