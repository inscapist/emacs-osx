# Emacs OSX

![Build Status](https://github.com/sagittaros/emacs-osx/actions/workflows/build.yml/badge.svg)

## Features

- Tested on Mac OSX Big Sur
- Works with yabai tiling window manager
- Comes with 4 variants (with/without native-compilation, and with/without tiling support)
- Cached builds, updated from source every 24 hours

## There are 4 variants

#### emacsOsx

> master emacs. Fresh out of https://savannah.gnu.org/projects/emacs

#### emacsOsxNative

> master emacs, with native compilation

#### emacsOsxTile

> emacsOsx with tiling support (may not work with posframe/childframe)

#### emacsOsxNativeTile

> emacsOsxNative with tiling support (may not work with posframe/childframe)

## Installation

#### Install Nix and optionally nix-darwin

No Nix knowledge required, and you do NOT need `nix-darwin` for this to work. [Nix Darwin](https://github.com/LnL7/nix-darwin) allows installation to /Applications folder but you could also symlink from `~/.nix-profile/Applications`.

Visit this link if you haven't installed Nix already.
https://nixos.org/guides/install-nix.html

#### Install to nix-store

```sh
# Install from cachix binaries
nix-env -iA cachix -f https://cachix.org/api/v1/install
cachix use emacs-osx
nix-env -iA emacsOsxNative -f https://github.com/sagittaros/emacs-osx/archive/refs/tags/built.tar.gz
```

#### Copy to /Applications

Not required if you are using nix-darwin.

```sh
sudo rm -rf /Applications/Emacs.app
sudo cp -rL ~/.nix-profile/Applications/Emacs.app /Applications
```

## Motivation

- Replicate [Emacs Overlay](https://github.com/nix-community/emacs-overlay) to OSX/darwin environment
- Allow overrides of patches
- Last but not least, for my own learning and use
- And in future (my own custom icons)

## Patches

More patches can be found below:

- [daviderestivo's emacs-head](https://github.com/daviderestivo/homebrew-emacs-head/tree/master/patches)
- [Emacs plus](https://github.com/d12frosted/homebrew-emacs-plus/tree/master/patches/emacs-28)
- [Emacs overlay](https://github.com/nix-community/emacs-overlay/tree/master/patches)

Note that this uses --with-ns (nextstep) and patches from "Mac Port" (see [here](https://bitbucket.org/mituharu/emacs-mac/src/master/)) version will likely not work.

## References

- https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/editors/emacs/generic.nix
- https://github.com/nix-community/emacs-overlay
- https://european-lisp-symposium.org/static/2020/corallo-nassi-manca-slides.pdf
- https://arxiv.org/pdf/2004.02504.pdf
- https://www.gnu.org/software/emacs/manual/html_node/elisp/Building-Emacs.html

## Inspired By

[Gccemacs by twlz0ne](https://github.com/twlz0ne/nix-gccemacs-darwin)

## CI configuration (Github Action)

Refer https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idruns-on
