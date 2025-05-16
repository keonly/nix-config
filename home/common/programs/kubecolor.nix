{
  lib,
  config,
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
