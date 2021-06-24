let
  # refer https://status.nixos.org for latest nixpkgs
  commit = "5c7023e5f051e1f534c5bbac50f0d18320823b28";
  pkgs = import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/${commit}.tar.gz";
    sha256 = "0v46qrjraamhxcf741z7k7fjpkgk2a3i3kjsa9q0jq18vcb2hwgn";
  }) { overlays = [ (import ./emacs-overlay.nix) ]; };
in pkgs
