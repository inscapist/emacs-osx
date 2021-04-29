let
  # refer https://status.nixos.org for latest nixpkgs
  commit = "bb149eb1192f278f95d0b870140750aac1bd81c0";
  pkgs = import
    (fetchTarball "https://github.com/NixOS/nixpkgs/archive/${commit}.tar.gz") {
      overlays = [ (import ./emacs-overlay.nix) ];
    };
in with pkgs; {
  inherit emacsOsx emacsOsxNative;

  # for use in chunwm or yabai
  inherit emacsOsxTile emacsOsxNativeTile;
}
