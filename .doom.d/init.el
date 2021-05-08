;;;;; init.el -*- lexical-binding: t; -*-

(doom! :completion
       company           
       ivy               

       :ui
       doom             
       doom-dashboard   
       hl-todo          
       hydra
       modeline       
       ophints         
       (popup +all +defaults)
       vc-gutter        
       workspaces      

       :editor
       (evil +everywhere)
       (format +onsave) 
       lispy           
       snippets       
       fold          

       :emacs
       (dired +ranger)  
       electric        
       undo           
       vc            

       :term
       eshell       

       :checkers
       syntax      
       (spell +flyspell)
       grammar         

       :tools
       direnv
       docker
       (eval +overlay) 
       lookup         
       (lsp +peek)
       magit         
       rgb          
       terraform   

       :lang
       (org +roam)
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
       (rss +org) 

       :config
       literate
       (default +bindings +smartparens))


