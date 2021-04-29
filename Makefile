build:
	nix-build | cachix push emacs-osx

install:
	nix-env -f . -iA emacsOsxNative
	sudo rm -rf /Applications/Emacs.app
	sudo cp -rL ~/.nix-profile/Applications/Emacs.app /Applications

install-with-tile:
	nix-env -f . -iA emacsOsxNativeTile
	sudo rm -rf /Applications/Emacs.app
	sudo cp -rL ~/.nix-profile/Applications/Emacs.app /Applications

