{
  lib,
  config,
  ...
}: {
  options = {
    gitui.enable = lib.mkEnableOption "Whether to enable gitui";
  };

  config = lib.mkIf config.gitui.enable {
    programs.gitui = {
      enable = true;
    };
  };
}
