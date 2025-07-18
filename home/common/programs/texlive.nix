{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: {
  options = {
    texlive.enable = lib.mkEnableOption "Whether to enable texlive";
  };

  config = lib.mkIf config.texlive.enable {
    programs.texlive = {
      enable = true;
    };
  };
}
