{
  config,
  pkgs,
  vars,
  ...
} @ args: {
  nix.settings = {
    experimental-features = ["nix-command" "flakes" "pipe-operators"];
  };
}
