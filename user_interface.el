;; Configurations affecting the aesthetics of my emacs
;; ====================================================


;; Scrolls way too fast on my mac

(when (eq system-type 'darwin)
  (setq mouse-wheel-scroll-amount '(0.01)))


(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers ...

(show-paren-mode 1)
(setq show-paren-delay 0)

;; How to show the matching offscreen paren (line shown in minibuffer)

(defadvice show-paren-function
      (after show-matching-paren-offscreen activate)
      "If the matching paren is offscreen, show the matching line in the
        echo area. Has no effect if the character before point is not of
        the syntax class ')'."
      (interactive)
      (if (not (minibuffer-prompt))
          (let ((matching-text nil))
            ;; Only call `blink-matching-open' if the character before point
            ;; is a close parentheses type character. Otherwise, there's not
            ;; really any point, and `blink-matching-open' would just echo
            ;; "Mismatched parentheses", which gets really annoying.
            (if (char-equal (char-syntax (char-before (point))) ?\))
                (setq matching-text (blink-matching-open)))
            (if (not (null matching-text))
                (message matching-text)))))


;;; Tabs are evil?
;;; Use spaces instead of tabs for indentation.
(setq indent-tabs-mode nil) 

;;; Turn on syntax-highlighting.
(global-font-lock-mode t)
(load-library "font-lock")
(setq font-lock-maximum-decoration t)









