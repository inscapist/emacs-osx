;;; $DOOMDIR/+hydra.el -*- lexical-binding: t; -*-

;; Folding
(map! :leader
      "z" #'hydra-folding/body)

;; https://github.com/gregsexton/origami.el
(defhydra hydra-folding (:color red)
  ("Z" origami-mode "Toggle origami mode" :column "Main")
  ("S" origami-show-only-node "Close everything except folds")
  ("u" origami-undo "Undo folds")
  ("r" origami-redo "Redo folds")
  ("R" origami-reset "Reset folds")

  ("C" origami-close-all-nodes "Close all folds" :column "Fold/Unfold")
  ("O" origami-open-all-nodes "Open all folds")
  ("c" origami-close-node-recursively "Close a fold node (recursively)")
  ("o" origami-open-node-recursively "Open a fold node (recursively)")
  ("t" origami-toggle-node "Toggle a fold")
  ("<tab>" origami-toggle-node "Toggle a fold")
  ("SPC" origami-toggle-node "Toggle a fold")
  ("T" origami-toggle-all-nodes "Toggle every folds")
  ("f" origami-forward-toggle-node "Search fold and toggle")

  ("C-j" origami-next-fold "Next fold" :column "Movement")
  ("C-k" origami-previous-fold "Prev fold")
  ("j" evil-next-line "Next line")
  ("k" evil-previous-line "Previous line")
  ("J" evil-scroll-down "Scroll down")
  ("K" evil-scroll-up "Scroll up")

  ("q" nil "quit menu" :color blue :column nil))
