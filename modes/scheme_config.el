;;; Scheme-specific customization

;;; Load the Quack mode, which is an advanced Scheme mode.
(require 'quack)

;; Quack + Scheme bindings (already present, this is for reference):
;; C-c C-q r : open up a REPL (same as M-x run-scheme)
;; C-x C-e : Send the last sexpr to the Scheme process
;; C-x h C-c C-r : Send the whole buffer by first marking (C-x h) and then sending region (C-c C-r)

;;; Loading/creating a file/buffer whose name ends with '.ss'
;;; automagically switches Emacs to Scheme mode.
(setq auto-mode-alist (cons '("\\.ss" . scheme-mode) auto-mode-alist))

;;; Change the program name string below to point to Petite Chez

;;; Scheme on your machine.  For example, Will uses the string
;;; "/usr/bin/petite" on his laptop running Mac OS X.
(let ((name (if (eq system-type 'darwin) "petite" "scheme")))
  (setq scheme-program-name (concat "/usr/bin/" name)))

;;; Teach Emacs how to properly indent
;;; certain Scheme special forms
;;; (such as 'pmatch')
(put 'cond 'scheme-indent-function 0)
(put 'for-each 'scheme-indent-function 0)
(put 'pmatch 'scheme-indent-function 1)
(put 'dmatch 'scheme-indent-function 1)
(put 'match 'scheme-indent-function 1)
(put 'library 'scheme-indent-function 1)
(put 'union-case 'scheme-indent-function 2)
(put 'cases 'scheme-indent-function 1)
(put 'let-values 'scheme-indent-function 1)
(put 'call-with-values 'scheme-indent-function 2)
(put 'syntax-case 'scheme-indent-function 2)
(put 'test 'scheme-indent-function 1)
(put 'test-check 'scheme-indent-function 1)
(put 'test-divergence 'scheme-indent-function 1)
(put 'make-engine 'scheme-indent-function 0)
(put 'with-mutex 'scheme-indent-function 1)
(put 'trace-lambda 'scheme-indent-function 1)
(put 'timed-lambda 'scheme-indent-function 1)
(put 'tlambda 'scheme-indent-function 1)


;; Stuff from custom-set-variables
(customize-set-variable 'quack-default-program "petite")
(customize-set-variable 'quack-fontify-style (quote emacs))
(customize-set-variable 'quack-fontify-threesemi-p t)
(customize-set-variable 'quack-pltish-fontify-keywords-p t)
(customize-set-variable 'quack-pltish-keywords-to-fontify (quote ("and" "begin" "begin0" "c-declare" "c-lambda" "call-with-current-continuation" "call-with-input-file" "call-with-output-file" "call/cc" "case" "case-lambda" "class" "class*" "class*/names" "class100" "class100*" "compound-unit/sig" "cond" "cond-expand" "define" "define-compiler" "define-macro" "define-module" "define-public" "define-signature" "define-struct" "define-syntax" "define-syntax-set" "define-values" "define-values/invoke-unit/sig" "define/contract" "define/override" "define/private" "define/public" "delay" "do" "else" "exit-handler" "field" "if" "import" "inherit" "inherit-field" "init" "init-field" "init-rest" "instantiate" "interface" "lambda" "let" "let*" "let*-values" "let+" "let-syntax" "let-values" "let/ec" "letrec" "letrec-values" "letrec-syntax" "library" "match" "match-lambda" "match-lambda*" "match-let" "match-let*" "match-letrec" "match-define" "mixin" "module" "opt-lambda" "or" "override" "override*" "namespace-variable-bind/invoke-unit/sig" "parameterize" "private" "private*" "protect" "provide" "provide-signature-elements" "provide/contract" "public" "public*" "quote" "receive" "rename" "require" "require-for-syntax" "send" "send*" "set!" "set!-values" "signature->symbols" "super-instantiate" "syntax-case" "syntax-case*" "syntax-error" "syntax-rules" "unit/sig" "unless" "when" "with-handlers" "with-method" "with-syntax")))
(customize-set-variable 'quack-pretty-lambda-p nil)
(customize-set-variable 'quack-programs (quote ("petite" "bigloo" "csi" "gosh" "gsi" "guile" "kawa" "mit-scheme" "mred -z" "mzscheme" "mzscheme -M errortrace" "rs" "scheme" "scheme48" "scsh" "sisc" "stklos" "sxi")))
(customize-set-variable 'quack-remap-find-file-bindings-p nil)
(customize-set-variable 'quack-run-scheme-always-prompts-p nil)
(customize-set-variable 'quack-switch-to-scheme-method (quote cmuscheme))
