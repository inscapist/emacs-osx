.PHONY: build cachix clean

build: cachix
	nix-build

install: cachix
	nix-env -f . -iA emacsOsx
	sudo rm -rf /Applications/Emacs.app
	cp -rL ~/.nix-profile/Applications/Emacs.app /Applications

cachix:
	cachix use emacs-osx

clean:
	rm -rf result*