(require 'use-package)
(setq use-package-always-ensure t)

;; Font face
(set-face-attribute 'default nil
		            :family "Rec Mono Linear"
		            :height 115)

;; Numbered lines & columns
(global-display-line-numbers-mode 1)
(column-number-mode 1)

;; Indentation
(setq tab-width 4
      indent-tabs-mode nil)

;; Scrolling
(setq mouse-wheel-scroll-amount '(3 ((shift) . hscroll))
      mouse-wheel-scroll-amount-horizontal 6
      mouse-wheel-progressive-speed nil)

;; Backup location for edited files
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; XTerm mouse fix
(xterm-mouse-mode 1)


;; Package list
(use-package evil
  :ensure t
  :config
  (evil-mode 1))
(use-package magit
  :ensure t)
(use-package haskell-mode
  :ensure t)
