;; Agda config

(when (and (eq system-type 'darwin)
	   (eq (user-login-name) "praveennarayanan"))
  (customize-set-variable 
   'agda2-include-dirs (quote ("/Users/praveennarayanan/lib-0.6/src" ".")))
  (load-file (let ((coding-system-for-read 'utf-8))
	       (shell-command-to-string "agda-mode locate"))))
