{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: {
  options = {
    delta.enable = lib.mkEnableOption "Whether to enable the delta syntax highlighter";
  };

  config = lib.mkIf config.delta.enable {
    programs.git.delta = {
      enable = true;

      options = {
        line-numbers = true;
      };
    };
  };
}
