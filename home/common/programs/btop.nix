{
  lib,
  config,
  ...
}: {
  options = {
    btop.enable = lib.mkEnableOption "Whether to enable btop";
  };

  config = lib.mkIf config.btop.enable {
    programs.btop = {
      enable = true;
    };
  };
}
