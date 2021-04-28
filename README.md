# Emacs OSX

## Installation

No Nix knowledge required. Refer [Makefile](./Makefile) for usage

More patches can be found [daviderestivo's project](https://github.com/daviderestivo/homebrew-emacs-head/tree/master/patches)

```sh
# install requirement
nix-env -iA cachix -f https://cachix.org/api/v1/install

# clone this repo
git clone git@github.com:sagittaros/emacs-osx.git

# either choose:
make install 
# or without titlebar:
make install-plus
```

## References
- https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/editors/emacs/generic.nix
- https://github.com/nix-community/emacs-overlay

## CI configuration (Github Action)
Refer https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idruns-on