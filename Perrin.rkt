#lang racket
(require se3-bib/prolog/prologInScheme)

(define (perrin n)
        (case n
            {(0) 3}
            {(1) 0}
            {(2) 2}
            {else (+ (perrin (- n 2))
                     (perrin (- n 3)))}))
(define memoPerrin (memo perrin))

(define (perrins n)
        (map (lambda (x) (perrin x))
             (build-list n (lambda (x) x))))
(define (perrinsM n)
        (map (lambda (x) (memoPerrin x))
             (build-list n (lambda (x) x))))
