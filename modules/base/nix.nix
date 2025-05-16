{
  config,
  pkgs,
  vars,
  ...
} @ args: {
  nix = {
    gc = {
      automatic = true;
      options = "--delete-older-than 7d";
    };

    settings = {
      experimental-features = ["nix-command" "flakes" "pipe-operators"];
    };
  };
}
