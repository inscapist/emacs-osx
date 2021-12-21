let
  pkgs = import ./pkgs.nix;

  # I am using the "builder" from nix-community's emacs-overlay, with some slight modifications
  # https://github.com/nix-community/emacs-overlay/blob/d1fbf6d39f3a0869c5fb0cc7f9ba7c9033e35cf9/default.nix#L25
  mkGitEmacs = namePrefix: jsonFile: patches:
    { ... }@args:
    let
      repoMeta = pkgs.lib.importJSON jsonFile;
      fetcher = if repoMeta.type == "savannah" then
        pkgs.fetchFromSavannah
      else if repoMeta.type == "github" then
        pkgs.fetchFromGitHub
      else
        throw "Unknown repository type ${repoMeta.type}!";
    in builtins.foldl' (drv: fn: fn drv) pkgs.emacs [

      (drv: drv.override ({ srcRepo = true; } // args))

      # in order for this build to be differentiated from original `nixpkgs.emacs`
      (drv:
        drv.overrideAttrs (old: {
          name = "${namePrefix}-${repoMeta.version}";
          inherit (repoMeta) version;
          inherit patches;
          src = fetcher (builtins.removeAttrs repoMeta [ "type" "version" ]);
          postPatch = old.postPatch + ''
            substituteInPlace lisp/loadup.el \
            --replace '(emacs-repository-get-version)' '"${repoMeta.rev}"' \
            --replace '(emacs-repository-get-branch)' '"master"'
          '';
          # https://github.com/NixOS/nixpkgs/issues/109997#issuecomment-867318377
          CFLAGS = "-DMAC_OS_X_VERSION_MAX_ALLOWED=110200 -g -O2";
        }))
    ];

  emacsOsx = mkGitEmacs "emacs-osx" ./emacs-source/emacs-master.json [
    ./patches/codesign.patch
  ] { };

  emacsOsxNative = mkGitEmacs "emacs-osx" ./emacs-source/emacs-master.json [
    ./patches/codesign.patch
  ] {
    nativeComp = true;
  };

  emacsOsxTile = mkGitEmacs "emacs-osx" ./emacs-source/emacs-master.json [
    ./patches/codesign.patch
    ./patches/no-titlebar.patch
    ./patches/fix-window-role-yabai.patch
  ] { };

  emacsOsxNativeTile = mkGitEmacs "emacs-osx" ./emacs-source/emacs-master.json [
    ./patches/codesign.patch
    ./patches/no-titlebar.patch
    ./patches/fix-window-role-yabai.patch
  ] { nativeComp = true; };

in _: _: {
  inherit emacsOsx;
  inherit emacsOsxNative;

  # for use in chunwm or yabai
  inherit emacsOsxTile;
  inherit emacsOsxNativeTile;
}
