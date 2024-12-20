{
  inputs,
  outputs,
  lib,
  system,
  ...
}: {
  imports = [
    ../commons/global
    ../commons/darwin
    ../commons/optional/shell/fish.nix
    ../commons/optional/shell/zsh.nix
    ./system.nix
  ];

  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.hostPlatform = system;
}
