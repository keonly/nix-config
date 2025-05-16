{
  config,
  pkgs,
  vars,
  ...
} @ args: {
  nix = {
    gc = {
      dates = "daily";
    };
  };
}
