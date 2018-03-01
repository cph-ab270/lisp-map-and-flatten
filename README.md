I added several versions of the flattena and map functions.

Mostly to experiment, but also to optimise the reccursion using an accumulator.

# mapFlatten example with n nested list
(mapFlatten (lambda (a) (+ a 1)) (list 1 (list 2 3) 4 (list 5 (list 6 7)))) -> (2 3 4 5 6 7 8)

# mapFlatten example with 2 dimensional list
Break 1 [27]> (mapFlatten (lambda (a) (+ a 1)) (list 1 (list 2 3) 4 (list 5 6))) -> (2 3 4 5 6 7 )
