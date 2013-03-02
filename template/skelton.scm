#!/usr/local/bin/gosh

;; for details:
;;   http://blog.practical-scheme.net/shiro/20120129-gauche-tips

;; ==============================
;; Libraries:
;; ==============================
(use gauche.parseopt)
(use util.match)

;; ==============================
;; Functions:
;; ==============================

(define (usage status)
  (exit status
        "usage: ~a <file>\n"
        *program-name*))

;; ==============================
;; Main:
;; ==============================

(define (main args)
  (let-args (cdr args) ([#f "h|help" => (cut usage 0)] . args)
    (match args
     [(file)  ...処理...]
     [_ (usage 1)])))
