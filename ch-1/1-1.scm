; 10 -> 10
(display 10) (newline)

; (+ 5 3 4) -> 12
(display (+ 5 3 4)) (newline)

; (- 9 1) -> 8
(display (- 9 1)) (newline)

; (/ 6 2) -> 3
(display (/ 6 2)) (newline)

; (+ (* 2 4) (- 4 6)) -> 6
(display (+ (* 2 4) (- 4 6))) (newline)

; (define a 3) -> 3
(define a 3)
(display a) (newline)

; (define b (+ a 1)) -> 4
(define b (+ a 1))
(display b) (newline)

; (+ a b (* a b)) -> 19
(display (+ a b (* a b))) (newline)

; (= a b) -> #f
(display (= a b)) (newline)

; (if (and (> b a) (< b (* a b))) -> b(4)
;   b
;   a)
(display (if (and (> b a) (< b (* a b)))
    b
    a)
) (newline)

; (cond ((= a 4) 6) -> 16
;    ((= b 4) (+ 6 7 a))
;    (else 25))
(display (cond ((= a 4) 6)
    ((= b 4) (+ 6 7 a))
    (else 25))
) (newline)

; (+ 2 (if (> b a) b a)) -> 6
(display (+ 2 (if (> b a) b a))) (newline)

; (* (cond ((> a b) a) -> 16
;           ((< a b) b)
;           (else -1))
;       (+ a 1))
(display (* (cond ((> a b) a)
        ((< a b) b)
        (else -1))
        (+ a 1))
) (newline)