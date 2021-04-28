self: super:
let
  # I am using the "builder" from nix-community's emacs-overlay, with some slight modifications
  # https://github.com/nix-community/emacs-overlay/blob/d1fbf6d39f3a0869c5fb0cc7f9ba7c9033e35cf9/default.nix#L25
  mkGitEmacs = namePrefix: jsonFile: patches:
    { ... }@args:
    let
      repoMeta = super.lib.importJSON jsonFile;
      fetcher = if repoMeta.type == "savannah" then
        super.fetchFromSavannah
      else if repoMeta.type == "github" then
        super.fetchFromGitHub
      else
        throw "Unknown repository type ${repoMeta.type}!";
    in builtins.foldl' (drv: fn: fn drv) self.emacs [

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
          postInstall = old.postInstall + ''
  	        rm -rf /Applications/Emacs.app
            cp -rL $out/Applications/Emacs.app /Applications
          '';
        }))
    ];

  emacsOsx = mkGitEmacs "emacs-osx" ./emacs-master.json
    [ ./patches/tramp-detect-wrapped-gvfsd.patch ] { nativeComp = true; };

  emacsOsxPlus = mkGitEmacs "emacs-osx" ./emacs-master.json [
    ./patches/tramp-detect-wrapped-gvfsd.patch
    ./patches/no-titlebar.patch
  ] { nativeComp = true; };

in {
  inherit emacsOsx;
  inherit emacsOsxPlus;
}
