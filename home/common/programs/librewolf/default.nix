{
  lib,
  config,
  ...
}: {
  options = {
    librewolf.enable = lib.mkEnableOption "Whether to enable librewolf";
  };

  config = lib.mkIf config.librewolf.enable {
    programs.librewolf = {
      enable = true;
    };
  };
}
