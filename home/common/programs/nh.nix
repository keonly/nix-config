{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: {
  options = {
    nh.enable = lib.mkEnableOption "Whether to enable nh";
  };

  config = lib.mkIf config.nh.enable {
    programs.nh = {
      enable = true;
    };
  };
}
