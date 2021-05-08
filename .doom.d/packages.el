;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el


;; Disable
(package! undo-fu-session :disable t)
(package! alchemist :disable t)
(package! alchemist-company :disable t)

;; writegood can be annoying
;; (package! writegood-mode :disable t)

;; hl-line has huge performance penalty on 4k monitor + retina mac
;; (package! hl-line :disable t)

;; Extra packages
;;(package! telephone-line)
(package! zoom)
(package! origami)
(package! lsp-origami)
;;(package! graphviz-dot-mode)

;; Themes
(package! kaolin-themes)
;; (package! darktooth-theme)
;; (package! ample-theme)
;; (package! acme-theme)
;; (package! tao-theme)

;; Use latest packages
;; (unpin! format-all) ;; https://github.com/lassik/emacs-format-all-the-code/issues/27
