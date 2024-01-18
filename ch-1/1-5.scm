
; If the order is applicative, the procedure will enter into infinite recursion
; because in applicative order of evaluation, all arguments of a function are evaluated first before the function is applied
; Example: (test 0 (p)) -> (p) -> (p) -> (p) -> ... and so on
; because the interpreter will continuously try to evaluate the value of (p), which is defined as (p), leading to repeated recursion.

; In the case of normal order of evaluation, in (test x (p)), x will be evaluated first in the predicate (if (= x 0))
; and since x = 0, the condition will be true, and the function will return 0 without evaluating y.
(define (p) (p))

(define (test x y)
    (if (= x 0)
        0
        y))