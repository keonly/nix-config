{
  imports = [
    ../commons/global
    ../commons/optional/util/nh.nix
    ./configuration.nix
  ];
  nix.settings.experimental-features = ["nix-command" "flakes"];
}
