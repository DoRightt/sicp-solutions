; this procedure calculate a + |b|
; it works this way:
; after evaluating the predicate, the sign of the operation will be determined + or -
; if b < 0 the result of procedure will be (- a -b)
; otherway the result will be (+ a b)
(define (a-plus-abs-b a b)
    ((if (> b 0) + -) 
            a 
            b))

; 8
(display (a-plus-abs-b 3 5)) (newline)

; 8
(display (a-plus-abs-b 3 -5)) (newline)