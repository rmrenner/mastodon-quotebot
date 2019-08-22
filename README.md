# Mastodon-quotebot

Mastodon-quotebot is a simple mastodon bot written in common lisp that posts randomly-selected lines from a text file.

### Requirements

Mastodon-quotebot depends on the [alexandria](https://common-lisp.net/project/alexandria/), [tooter](https://shinmera.github.io/tooter/), and [cl-json](https://common-lisp.net/project/cl-json/cl-json.html) libraries.

While it can be run from a Common Lisp REPL, a roswell script is provided to build a standalone executable and an example .service config file is included for use on operating systems that use systemd.
