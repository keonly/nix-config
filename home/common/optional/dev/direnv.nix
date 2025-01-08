{
  lib,
  config,
  ...
}: {
  options = {
    direnv.enable = lib.mkEnableOption "Whether to enable direnv";
  };

  config = lib.mkIf config.direnv.enable {
    programs.direnv = {
      enable = true;
    };
  };
}
