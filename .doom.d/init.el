;;;;; init.el -*- lexical-binding: t; -*-


(doom! :completion
       company           ; the ultimate code completion backend
       ivy               ; a search engine for love and life

       :ui
       doom              ; what makes DOOM look the way it does
       doom-dashboard    ; a nifty splash screen for Emacs
       hl-todo           ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       hydra
       modeline          ; snazzy, Atom-inspired modeline, plus API
       ophints           ; highlight the region an operation acts on
       (popup +all +defaults)   ; tame sudden yet inevitable temporary windows
       vc-gutter         ; vcs diff in the fringe
       workspaces        ; tab emulation, persistence & separate workspaces

       :editor
       (evil +everywhere); come to the dark side, we have cookies
       (format +onsave)  ; automated prettiness
       lispy             ; vim for lisp, for people who don't like vim
       snippets          ; my elves. They type so I don't have to
       fold              ; (nigh) universal code folding

       :emacs
       (dired +ranger)             ; making dired pretty [functional]
       electric          ; smarter, keyword-based electric-indent
       undo              ; persistent, smarter undo for your inevitable mistakes
       vc                ; version-control and Emacs, sitting in a tree

       :term
       eshell            ; the elisp shell that works everywhere

       :checkers
       syntax              ; tasing you for every semicolon you forget
       (spell +flyspell) ;; SPC t s to toggle
       grammar           ; tasing grammar mistake every you make

       :tools
       direnv
       docker
       (eval +overlay)     ; run code, run (also, repls)
       lookup              ; navigate your code and its documentation
       (lsp +peek)
       magit             ; a git porcelain for Emacs
       rgb               ; creating color strings
       terraform         ; infrastructure as code

       :lang
       latex
       clojure
       elixir
       elm
       emacs-lisp
       go
       haskell
       json
       javascript
       markdown
       nim
       nix
       org
       purescript
       python
       rust
       scala
       sh
       web
       yaml

       :email
       (mu4e +gmail)
       notmuch
       (wanderlust +gmail)

       :app
       (rss +org)        ; emacs as an RSS reader

       :config
       literate
       (default +bindings +smartparens))


