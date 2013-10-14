;;
;; prav's .emacs file
;;

(defun add-path (p) (add-to-list 'load-path (concat "~/" p)))

(add-path "emacs")
(add-path "emacs/modes")
(add-path "emacs/plugins")
(add-path "emacs/plugins/tuareg-2.0.4") ;; OCaml
(add-path "/emacs/plugins/auctex-11.87") ;; LaTeX with AucTex
(add-path "/emacs/plugins/ess") ;; Emacs Speaks Statistics

(load-library "modes")
(load-library "user_interface")
