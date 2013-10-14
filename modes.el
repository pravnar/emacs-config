;; Configurations for various modes
;; ==========================================


;; Common Lisp
;; Use bindings when writing Elisp

(require 'cl)


;; Macaulay 2

(when (and (eq system-type 'darwin)
	   (eq (user-login-name) "praveennarayanan"))
  (load-library "macaulay2"))


;; OCaml

(load-library "ocaml")


;; C, C++, Objective-C, Java, CORBA's IDL, Pike, and AWK

(require 'cc-mode)


;; Scheme

(load-library "scheme_config")


;; miniKanren

(load-library "minikanren")


;; Mode to make SpeedBar show in Current Frame

(require 'sr-speedbar)


;; Markdown

(load-library "markdown")


;; Marmalade for fun packages
;; Do M-x package-list-packages to see them (learnt while using haskell-mode)

(unless (boundp 'aquamacs-version)
  (require 'package)
  (add-to-list 'package-archives
	       '("marmalade" . "http://marmalade-repo.org/packages/"))
  (package-initialize))


;; Haskell

(load-library "haskell")


;; LaTeX with AucTex

;; (load "auctex.el" nil t t)
;; (load "preview-latex.el" nil t t)


;; Grammatical Framework

(load-library "gf_config")


;; Agda

(load-library "agda")


;; Org mode

(load-library "org_config")


;; Deft

(load-library "deft_config")


;; ESS (Emacs Speaks Statistics)

(load "ess-13.09/lisp/ess-site")
