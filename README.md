# Emacs OSX

## Installation

No Nix knowledge required. Refer [Makefile](./Makefile) for usage

```sh
# install requirement
nix-env -iA cachix -f https://cachix.org/api/v1/install
make install
```

## Reference
- https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/editors/emacs/generic.nix
- https://github.com/nix-community/emacs-overlay