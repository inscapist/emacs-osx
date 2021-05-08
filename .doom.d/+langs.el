;;; $DOOMDIR/+langs.el -*- lexical-binding: t; -*-

(setq web-mode-code-indent-offset 2)

;; Elixir
(after! lsp-mode
  (setq lsp-enable-file-watchers nil)
  (add-to-list 'exec-path "~/elixir-ls"))

;; disable lsp formatting
(setq +format-with-lsp nil)

;; electric rjsx
;; https://github.com/felipeochoa/rjsx-mode/issues/112
(defun +javascript-rjsx-electric-gt-a (_)
  (when (and (looking-back "<>")
             (looking-at-p "/>"))
    (save-excursion (insert "<"))))
(advice-add #'rjsx-electric-gt :after #'+javascript-rjsx-electric-gt-a)
