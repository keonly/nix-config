{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: {
  options = {
    fish.enable = lib.mkEnableOption "Whether to enable fish";
  };

  config = lib.mkIf config.fish.enable {
    programs.fish = {
      enable = true;
    };
  };
}
