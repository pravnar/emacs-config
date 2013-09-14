;; Configurations affecting the aesthetics of my emacs
;; ====================================================


;; Scrolls way too fast on my mac

(when (eq system-type 'darwin)
  (setq mouse-wheel-scroll-amount '(0.01)))


;; Parentheses setup

(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers ...

(show-paren-mode 1)
(setq show-paren-delay 0)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(paren-blinking "t" t)
 '(paren-matching t t))

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



;; Tabs are evil?
;; Use spaces instead of tabs for indentation.

(setq indent-tabs-mode nil) 


;; Turn on syntax-highlighting.

(global-font-lock-mode t)
(load-library "font-lock")
(setq font-lock-maximum-decoration t)


;; Align regular expessions - useful for aligning inline comments

(global-set-key (kbd "C-x a r") 'align-regexp)


;; Some more interface changes

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(quack-pltish-comment-face ((((class color) (background dark)) (:slant italic)))) ;; Scheme specific
 '(border ((t (:width condensed))))
 '(fringe ((t (:width condensed)))))


;; Use linum for fancy line numbers

(require 'linum)
;; (setq linum-format "%d ")
(global-linum-mode 1)
;; (set-face-attribute 'linum nil :background "#2d2d2d")


;; Fonts

;; (set-default-font "inconsolata-11")
;; (set-default-font "apple-monaco-11")
;; (set-default-font "dejavu-sans-mono-11")
;; (set-default-font "consolas-12")
(set-default-font "anonymous-pro-13")
;; (set-default-font "menlo-11")



;; Transparency
;; Syntax:  (set-frame-parameter (selected-frame) 'alpha '(<active> [<inactive>]))

(set-frame-parameter (selected-frame) 'alpha '(100 83))
(add-to-list 'default-frame-alist '(alpha 100 83))


;; Things I need and don't need

(setq inhibit-startup-message 1)
(line-number-mode 1)
(column-number-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(fringe-mode -1)
;; (set-fringe-mode '(1 . 0))


;; Color Themes

(when (>= emacs-major-version 24)
  (add-to-list 'custom-theme-load-path "~/emacs/themes/")
  (add-to-list 'custom-theme-load-path "~/emacs/themes/soothe_theme/")
  ;; (load-theme 'misterioso t)
  ;; (load-theme 'zenburn t) ;; #303030 Background
  ;; (load-theme 'tomorrow t) ;; #ffffff Background
  ;; (load-theme 'tomorrow-night t) ;; #1d1f21 Background
  ;; (load-theme 'tomorrow-night-eighties t) ;; #2d2d2d Background
  (load-theme 'soothe t))


;; Fullscreen
;; For now, this is used only for Emacs v. 24.3._

(defun toggle-fullscreen ()
  "Toggle full screen"
  (interactive)
  (when window-system
    (set-frame-parameter
     nil 'fullscreen
     (when (not (frame-parameter nil 'fullscreen)) 'fullboth))))


;; Keybindings

(when (eq emacs-major-version 24)
  (case emacs-minor-version
    (2 (global-set-key (kbd "M-RET") 'ns-toggle-fullscreen))
    (3 (global-set-key (kbd "M-RET") 'toggle-fullscreen))))
