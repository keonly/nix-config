{pkgs, ...}: {
  imports = [
    ./kitty
    ./starship.nix
    ./tmux.nix
  ];
}
