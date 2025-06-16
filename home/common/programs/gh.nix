{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: {
  options = {
    gh.enable = lib.mkEnableOption "Whether to enable gh";
  };

  config = lib.mkIf config.gh.enable {
    programs.gh = {
      enable = true;
    };
  };
}
