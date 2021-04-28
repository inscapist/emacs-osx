# Note to self

Can we cache intermediate builds?

```sh

# view all emacs-osx derivation
ls /nix/store/ | rg emacs-osx


# push upstream derivation
nix-store -qR --include-outputs /nix/store/q2h55mkrcpk9paxibr3kc7n155cwyz8n-emacs-osx-20210428.0.drv | cachix push emacs-osx
```
