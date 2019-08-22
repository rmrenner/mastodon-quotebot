;;;; quotebot.lisp

(in-package #:quotebot)

(defclass quotebot (tooter:client)
  ((corpus
    :initarg :corpus
    :accessor corpus)
   (interval
    :initarg :interval
    :initform (* 60 60)
    :accessor interval)))

(defun from-json (settings-file)
  (let ((settings (json:decode-json-from-source (make-pathname :name settings-file))))
    (make-instance 'quotebot
		   :base (cdr (assoc :instance-url settings))
		   :name (cdr (assoc :bot-name settings))
		   :key (cdr (assoc :client-key settings))
		   :secret (cdr (assoc :client-secret settings))
		   :access-token (cdr (assoc :access-token settings))
		   :corpus (uiop:read-file-lines (cdr (assoc :corpus-file settings)))
		   :interval (cdr (assoc :interval settings)))))

(defun run (client)
  (setf *random-state* (make-random-state t))
  (with-slots (corpus interval) client
    (loop
      (handler-case (tooter:make-status client (alexandria:random-elt corpus))
        (error () nil))
      (sleep interval))))
