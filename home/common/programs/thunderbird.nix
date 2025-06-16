{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: {
  options = {
    thunderbird.enable = lib.mkEnableOption "Whether to enable thunderbird";
  };

  config = lib.mkIf config.thunderbird.enable {
    programs.thunderbird = {
      enable = true;
    };
  };
}
