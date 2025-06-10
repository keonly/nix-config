{
  lib,
  config,
  ...
}: {
  options = {
    lazygit.enable = lib.mkEnableOption "Whether to enable lazygit";
  };

  config = lib.mkIf config.lazygit.enable {
    programs.lazygit = {
      enable = true;
    };
  };
}
