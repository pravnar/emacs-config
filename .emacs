;;
;; prav's .emacs file
;;

(defun add-path (p) (add-to-list 'load-path (concat "~/" p)))

(setq user-emacs-directory "~/emacs/.emacs.d/")

(add-path "emacs")
(add-path "emacs/modes")
(add-path "emacs/plugins")
(add-path "emacs/plugins/tuareg-2.0.4") ;; OCaml
(add-path "/emacs/plugins/auctex-11.87") ;; LaTeX with AucTex
(add-path "/emacs/plugins/ess") ;; Emacs Speaks Statistics
(add-path "/emacs/plugins/auto-complete-1.3.1") ;; Autocomplete
(add-path "/emacs/plugins/emacs-powerline") ;; Powerline
(add-path "/emacs/plugins/lisp/w3m") ;; w3m
(add-path "/emacs/plugins/etc/images/w3m")
(add-path "/emacs/plugins/info/dir")
(add-path "/emacs/plugins/share/emacs/site-lisp/w3m/")
(add-path "/emacs/plugins/share/info/")


(load-library "modes")
(load-library "user_interface")
