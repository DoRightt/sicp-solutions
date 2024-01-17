; 10 -> 10
(print 10)

; (+ 5 3 4) -> 12
(print (+ 5 3 4))

; (- 9 1) -> 8
(print (- 9 1))

; (/ 6 2) -> 3
(print (/ 6 2))

; (+ (* 2 4) (- 4 6)) -> 6
(print (+ (* 2 4) (- 4 6)))

; (define a 3) -> 3
(defvar a 3)
(print a)

; (define b (+ a 1)) -> 4
(defvar b (+ a 1))
(print b)

; (+ a b (* a b)) -> 19
(print (+ a b (* a b)))

; (= a b) -> NIL
(print (= a b))

; (if (and (> b a) (< b (* a b))) -> b(4)
;   b
;   a)
(print (if (and (> b a) (< b (* a b)))
    b
    a)
)

; (cond ((= a 4) 6) -> 16
;    ((= b 4) (+ 6 7 a))
;    (else 25))
(print (cond ((= a 4) 6)
    ((= b 4) (+ 6 7 a))
    (else 25))
)

; (+ 2 (if (> b a) b a)) -> 6
(print (+ 2 (if (> b a) b a)))

;   (* (cond ((> a b) a) -> 16
;           ((< a b) b)
;           (else -1))
;       (+ a 1))
(print (* (cond ((> a b) a)
        ((< a b) b)
        (else -1))
        (+ a 1))
)