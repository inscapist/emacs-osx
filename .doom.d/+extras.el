;;; $DOOMDIR/+extras.el -*- lexical-binding: t; -*-

;; disable shortmenu
(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-shortmenu)


;; Customize or disable extra ligatures
;; https://www.fileformat.info/info/unicode/category/Sm/list.htm
;; (plist-put! +ligatures-extra-symbols
;;             :and           "⋀"
;;             :or            "⋁"
;;             :return        nil
;;             :yield         nil
;;             :tuple         nil)


;; successor of golden-ratio.el
(use-package zoom
  :hook (doom-first-input . zoom-mode)
  :config
  (setq zoom-size '(0.618 . 0.618)
        zoom-ignored-major-modes '(vterm-mode help-mode helpful-mode rxt-help-mode help-mode-menu org-mode)
        zoom-ignored-buffer-names '("*doom:scratch*" "*info*" "*helpful variable: argv*")
        zoom-ignored-buffer-name-regexps '("^\\*calc" "\\*helpful variable: .*\\*")
        ;; zoom-ignore-predicates (list (lambda () (< (count-lines (point-min) (point-max)) 10)))
        ))


;; ;; Useful for showing types in haskell but obtrusive
;; (after! lsp-ui
;;   (setq lsp-ui-doc-enable t
;;         lsp-ui-doc-use-childframe t
;;         lsp-ui-doc-max-width 80
;;         lsp-ui-doc-max-height 20))


;; ;; telephone modeline (doom-modeline alternative)
;; (setq telephone-line-primary-left-separator 'telephone-line-cubed-left
;;       telephone-line-secondary-left-separator 'telephone-line-cubed-hollow-left
;;       telephone-line-primary-right-separator 'telephone-line-cubed-right
;;       telephone-line-secondary-right-separator 'telephone-line-cubed-hollow-right
;;       telephone-line-height 21
;;       telephone-line-evil-use-short-tag nil)
;; (telephone-line-mode t)
