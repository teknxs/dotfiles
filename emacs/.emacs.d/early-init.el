;; Disable unnecessary bars
(menu-bar-mode   -1)
(tool-bar-mode   -1)
(scroll-bar-mode -1)
(horizontal-scroll-bar-mode -1)

;; Inhibit Xresources load
(setq inhibit-x-resources t)

;; Theming
(set-face-attribute 'default nil
                    :foreground "#F6F6F6"
                    :background "#090909")
(set-face-attribute 'mouse nil
		    :background "#F6F6F6")

;; Other
(setq custom-file null-device
      warning-minimum-level :emergency)
