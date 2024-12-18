{pkgs, ...}: {
  imports = [
    ./fish.nix
    ./nu.nix
    ./zsh.nix
  ];
}
