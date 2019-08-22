;;;; quotebot.asd

(asdf:defsystem #:quotebot
  :description "Describe quotebot here"
  :author "RM Renner <rmrenner@gmail.com>"
  :license  "MIT License"
  :version "0.0.1"
  :serial t
  :depends-on ("alexandria" "tooter" "cl-json")
  :components ((:file "package")
               (:file "quotebot")))
