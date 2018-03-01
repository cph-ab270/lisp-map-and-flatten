#pushing-memory
(defun myMap (f l) (if (eq (car (cdr l)) nil) (list (funcall f (car l))) (cons (funcall f (car l)) (myMap f (cdr l)))))

#optimised-but-need-to-cast-to-list
(defun myMap (f l &optional (acc (list))) (if (not (car l)) acc (myMap f (cdr l) (append acc (list (funcall f (car l)))))))

#optimised-but-need-to-revert-in-the-end
(defun myMap (f l &optional (acc (list))) (if (not (car l)) (reverse acc) (myMap f (cdr l) (cons (funcall f (car l)) acc) ) ))

#n-list
(defun flatten (l &optional (acc (list)))
  (if (not (car l))
    acc
    (if (consp (car l))
      (flatten (cdr l) (append acc (flatten (car l))))
      (flatten (cdr l) (append acc (list (car l))))
    )
  )
)

#2-dimensional-list
(defun flatten (l &optional (acc (list)))
  (if (not (car l))
    acc
    (if (consp (car l))
      (flatten (cdr l) (append acc (car l)))
      (flatten (cdr l) (append acc (list (car l))))
    )
  )
)

(defun mapFlatten (f l &optional (acc (list))) (myMap f (flatten l)) )
