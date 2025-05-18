{
  lib,
  config,
  ...
}: {
  options = {
    fd.enable = lib.mkEnableOption "Whether to enable fd";
  };

  config = lib.mkIf config.fd.enable {
    programs.fd = {
      enable = true;
    };
  };
}
