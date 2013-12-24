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

(load-library "modes")
(load-library "user_interface")
