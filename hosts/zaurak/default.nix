{
  inputs,
  outputs,
  system,
  ...
}: {
  imports = [
    ../commons/global
    ../commons/darwin
    ../commons/optional/shell
    ./system.nix
  ];

  fish.enable = true;
  zsh.enable = true;
  nushell.enable = true;
  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.hostPlatform = system;
}
