;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys


;; =============================================================================================
;; Basic global configuration
;; =============================================================================================
(setq user-full-name "Felix"
      user-mail-address "zen9.felix@gmail.com")

(after! elfeed
  (setq elfeed-search-filter "@5-days-ago"))
(add-hook! 'elfeed-search-mode-hook 'elfeed-update)

(load! "+bindings")
(load! "+editor")
(load! "+extras")
(load! "+hydra")
(load! "+langs")
(load! "+org")
(load! "+ui")

