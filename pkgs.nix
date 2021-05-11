let
  # refer https://status.nixos.org for latest nixpkgs
  commit = "ee4520e789864f3441f3ec488e16d9f548b22ca5";
  pkgs = import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/${commit}.tar.gz";
    sha256 = "1cc21hspswl2wgbqi2nd4wfzp9ki2033yw2kkf4j7nhpwr80rn5w";
  }) { overlays = [ (import ./emacs-overlay.nix) ]; };
in pkgs
