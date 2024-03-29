
; new-if will not work because of applicative-order evaluation in lisp, 
; it will try to evaluate all arguments of new-if procedure and stuck in endless recursion

; basic cond/if version will work
; (define (sqrt-iter guess x)
;     (if (good-enough? guess x)
;         guess
;         (sqrt-iter (improve guess x)
;             x)))

(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
            x)))

(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
        (else else-clause)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
    (sqrt-iter 1.0 x))

(display (sqrt 4)) (newline)