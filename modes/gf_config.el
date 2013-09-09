;; Grammatical Framework config

(autoload 'run-gf "gf" nil t)
(autoload 'gf-mode "gf" nil t)
(add-to-list 'auto-mode-alist '("\\.gf\\(\\|e\\|r\\|cm?\\)\\'" . gf-mode))
(add-to-list 'auto-mode-alist '("\\.cf\\'" . gf-mode))
(add-to-list 'auto-mode-alist '("\\.ebnf\\'" . gf-mode))
