;;; Scheme-specific customization

;;; Load the Quack mode, which is an advanced Scheme mode.
(require 'quack)

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
