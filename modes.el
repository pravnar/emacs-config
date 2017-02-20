;; ==========================================
;; Configurations for various modes
;; ==========================================



;; Common Lisp
;; Use bindings when writing Elisp

(require 'cl)


;; Haskell

(load-library "haskell_config")


;; ;; Macaulay 2

;; (when (and (eq system-type 'darwin)
;; 	   (eq (user-login-name) "praveennarayanan"))
;;   (load-library "macaulay2"))


;; OCaml

(load-library "ocaml")


;; ;; C, C++, Objective-C, Java, CORBA's IDL, Pike, and AWK

;; (require 'cc-mode)


;; Scheme

(load-library "scheme_config")


;; ;; miniKanren

;; (load-library "minikanren")


;; ;; Mode to make SpeedBar show in Current Frame

;; (require 'sr-speedbar)


;; NeoTree

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme 'nerd)
;; Every time when the neotree window is opened, let it find current file and jump to node.
(setq neo-smart-open t)

;; Markdown

(load-library "markdown")


;; ;; Grammatical Framework

;; (load-library "gf_config")


;; Agda

(load-library "agda")


;; Org mode

(load-library "org_config")


;; Deft

(load-library "deft_config")


;; ESS (Emacs Speaks Statistics)

(load "ess-13.09/lisp/ess-site")


;; Newsticker

;; (unless (and (eq system-type 'darwin)
;; 	     (equal (user-login-name) "praveennarayanan"))
;;   (load-library "newsticker_config"))


;; w3m

;; (unless (and (eq system-type 'darwin)
;; 	     (equal (user-login-name) "praveennarayanan"))
;;   (load-library "w3m_config"))


;; Web

;; (load-library "web")


;; Coq + Proof General

(load-library "coq")


;; Racket

(load-library "racket")


;; Use aspell for spell checking

(setq ispell-program-name "aspell")


;; Use company for completion

(add-hook 'after-init-hook 'global-company-mode)

;; global activation of the unicode symbol completion with company-math
(with-eval-after-load 'company
  (add-to-list 'company-backends 'company-math-symbols-unicode))

(setq company-tooltip-align-annotations t)

;; ;; Autocomplete

;; (require 'auto-complete-config)
;; (add-to-list 'ac-dictionary-directories 
;; 	     "~/emacs/plugins/auto-complete-1.3.1/ac-dict")
;; (ac-config-default)


;; LaTeX with company-math https://github.com/vspinu/company-math

;; local configuration for TeX modes
(defun latex-mode-setup ()
  (setq-local company-backends
              (append '((company-math-symbols-latex company-latex-commands))
                      company-backends)))

(add-hook 'tex-mode-hook 'latex-mode-setup)


;; Keybinding for using recompile (uses the last entered command, no confirmation needed)

(global-set-key (kbd "C-c r") 'recompile)


;; ERC for chatting

(require 'erc)


;; Email using mu (and mu4e)

(load-library "mu")


;; Helm

(load-library "helm_config")


;; Magit

(global-set-key (kbd "C-x g") 'magit-status)
