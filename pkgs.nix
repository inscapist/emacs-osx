let
  # refer https://status.nixos.org for latest nixpkgs
  commit = "b2d256095aeac09f8af6b6c95ab3cf4bc5fd4e6f";
  pkgs = import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/${commit}.tar.gz";

    # nix-prefetch-url --unpack \
    # https://github.com/NixOS/nixpkgs/archive/b2d256095aeac09f8af6b6c95ab3cf4bc5fd4e6f.tar.gz
    sha256 = "06xamgm7w9xnn17lzg5kcmibch6a753rjc2xpf0z7jgw84rslff3";
  }) { overlays = [ (import ./emacs-overlay.nix) ]; };
in pkgs
