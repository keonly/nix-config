{
  imports = [
    ../commons/global
    ../commons/optional/util/nh.nix
    ../commons/optional/util/kime.nix
    ./configuration.nix
  ];
  nix.settings.experimental-features = ["nix-command" "flakes"];
}
