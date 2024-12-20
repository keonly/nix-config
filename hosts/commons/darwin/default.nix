{...}: {
  imports = [
    ./wm
    ./user.nix
    ./xdg.nix
  ];

  services.nix-daemon.enable = true;
}
