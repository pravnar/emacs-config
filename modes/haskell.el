;; Haskell config

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)


;; ghc-mod

(add-to-list 'load-path "~/Library/Haskell/ghc-7.6.3/lib/ghc-mod-3.1.4/")
(add-to-list 'exec-path "~/Library/Haskell/ghc-7.6.3/lib/ghc-mod-3.1.4/bin/")
(autoload 'ghc-init "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))
