;; Configurations for various language modes
;; ==========================================


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











