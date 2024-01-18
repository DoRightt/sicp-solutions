(define (square x)
    (* x x)
)
    
(define (squareSum x y) 
    (+ (square x) (square y))
)

(define (max-square x y z)
    (cond 
        ((and (<= x y) (<= x z)) (squareSum y z))
        ((and (<= y x) (<= y z)) (squareSum x z))
        (else (squareSum x y))
    )
)

; 25
(display (max-square 2 3 4)) (newline) 