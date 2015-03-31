;; Org mode config

(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t
      deft-use-filename-as-title t
      org-agenda-files (list "~/notes/"
			     "~/notes/deft"))

(add-hook 'org-mode-hook 'nolinum)
