{
  lib,
  config,
  ...
}: {
  options = {
    kime.enable = lib.mkEnableOption "Whether to enable kime";
  };

  config = lib.mkIf config.kime.enable {
    i18n.inputMethod = {
      enable = true;
      type = "kime";

      kime.iconColor = "White";
    };
  };
}
