(in-package :cl-user)
(defpackage {{name}}/t/main
  (:use :cl
        :{{name}}
        :rove))
(in-package :{{name}}/t/main)

(defvar *port* 21464)

(deftest test-connection
  (unwind-protect
       (progn
         ({{name}}:start :port *port*)
         (handler-case
             (let ((connected nil))
               (dotimes (i 5)
                 (when (dex:get (format nil "http://localhost:~D" *port*))
                   (setf connected t)
                   (return))
                 (sleep 1))
               (ok connected)) 
           (error (e)
             (fail (format nil "~A" e)))))
    ({{name}}:stop)))
