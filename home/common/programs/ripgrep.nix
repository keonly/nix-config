{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: {
  options = {
    ripgrep.enable = lib.mkEnableOption "Whether to enable ripgrep";
  };

  config = lib.mkIf config.ripgrep.enable {
    programs.ripgrep = {
      enable = true;
    };
  };
}
