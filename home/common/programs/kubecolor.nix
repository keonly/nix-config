{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: {
  options = {
    kubecolor.enable = lib.mkEnableOption "Whether to enable kubecolor";
  };

  config = lib.mkIf config.kubecolor.enable {
    programs.kubecolor = {
      enable = true;
    };
  };
}
