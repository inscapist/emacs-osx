let
  # refer https://status.nixos.org for latest nixpkgs
  commit = "bb149eb1192f278f95d0b870140750aac1bd81c0";
  pkgs = import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/${commit}.tar.gz";
    sha256 = "0986q8li490qkig65mc86ppgr15q254hx5ij4z04m8iknkqc61k9";
  }) { overlays = [ (import ./emacs-overlay.nix) ]; };
in pkgs
