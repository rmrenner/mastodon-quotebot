;;;; package.lisp

(defpackage #:quotebot
  (:use #:cl)
  (:export #:quotebot #:from-json #:pick-line #:toot #:corpus-from-file #:run))
