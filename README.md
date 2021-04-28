# Emacs OSX

## Installation

No Nix knowledge required, and you do NOT need `nix-darwin` for this to work.

Visit this link if you haven't installed Nix already.
https://nixos.org/guides/install-nix.html

```sh
# Build locally
git clone git@github.com:sagittaros/emacs-osx.git
cd emacs-osx && nix-env -iA emacsOsx # optionally choose emacsOsxPlus

# Install from cachix binaries
nix-env -iA cachix -f https://cachix.org/api/v1/install
cachix use emacs-osx
nix-env -iA emacsOsx -f https://github.com/sagittaros/emacs-osx/archive/main.zip
```

## Patches
More patches can be found below:
- [daviderestivo's emacs-head](https://github.com/daviderestivo/homebrew-emacs-head/tree/master/patches)
- [Emacs plus](https://github.com/d12frosted/homebrew-emacs-plus/tree/master/patches/emacs-28)
- [Emacs overlay](https://github.com/nix-community/emacs-overlay/tree/master/patches)

Note that this uses --with-ns (nextstep) and patches from "Mac Port" (see [here](https://bitbucket.org/mituharu/emacs-mac/src/master/)) version will likely not work.

## References
- https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/editors/emacs/generic.nix
- https://github.com/nix-community/emacs-overlay

## CI configuration (Github Action)
Refer https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idruns-on