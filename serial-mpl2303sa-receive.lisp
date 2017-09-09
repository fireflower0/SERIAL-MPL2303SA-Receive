;; Load packages
(load "packages.lisp" :external-format :utf-8)

(in-package :cl-cffi)

;; Load wrapper API
(load "libwiringPi.lisp" :external-format :utf-8)

(defun main ()
  (let (fd input-data)
    ;; Serial Open. For RaspberryPi2, use "/dev/ttyAMA0".
    (setf fd (serialOpen "/dev/ttyS0" 115200))
    (if (< fd 0)
        (return-from main nil))

    ;; Serial data reception
    (loop
       (setf input-data (serialGetchar fd))
       ;; Loop for 10 seconds until "serialGetchar" returns "-1".
       (if (< input-data 0) (return))
       (format t "~a" (code-char input-data))
       (delay 100))

    ;; Serial Close
    (serialClose fd)))

;; Executable!!!
(main)
