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
    ../commons/optional/util/croc.nix
    ./system.nix
  ];

  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.hostPlatform = system;
}
