;; Deft customization

(require 'deft)

(setq deft-extension "org"
      deft-directory "~/org/deft"
      deft-text-mode 'org-mode)

(when (eq system-type 'darwin)
  (global-set-key [f5] 'deft))
