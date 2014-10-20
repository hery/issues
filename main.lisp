(ql:quickload :cl-who)
(ql:quickload :hunchentoot)
(ql:quickload :parenscript)

(defpackage :issues
  (:use :cl :cl-who :hunchentoot :parenscript))

(in-package :issues)

(hunchentoot:define-easy-handler (home :uri "/") ()
  (setf (hunchentoot:content-type*) "text/html")
  (with-html-output (*standard-output* nil :indent t)
    (:html
      (:head
        (:title "Issues"))
      (:body
        (:p
          (:b "hello, pandas!"))))))

(hunchentoot:start (make-instance 'hunchentoot:easy-acceptor :port 5000))
