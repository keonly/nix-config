{
  lib,
  config,
  ...
}: {
  options = {
    password-store.enable = lib.mkEnableOption "Whether to enable password-store";
  };

  config = lib.mkIf config.password-store.enable {
    programs.password-store = {
      enable = true;
    };
  };
}
