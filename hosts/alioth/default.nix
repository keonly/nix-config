{
  imports = [
    ../commons/global
    ./configuration.nix
  ];
  nix.settings.experimental-features = ["nix-command" "flakes"];
}
