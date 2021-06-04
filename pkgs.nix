let
  # refer https://status.nixos.org for latest nixpkgs
  commit = "7e9e1b6351bb4acc71f88d3fc4defa3fa899e121";
  pkgs = import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/${commit}.tar.gz";
    sha256 = "1ga7zkkzksgpvymkblj31m55zdrn1ak2iqnisk177x5mgd9vvcqp";
  }) { overlays = [ (import ./emacs-overlay.nix) ]; };
in pkgs
