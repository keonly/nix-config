{
  lib,
  config,
  ...
}: {
  options = {
    k9s.enable = lib.mkEnableOption "Whether to enable k9s";
  };

  config = lib.mkIf config.k9s.enable {
    programs.k9s = {
      enable = true;
    };
  };
}
