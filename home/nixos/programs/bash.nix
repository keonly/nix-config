{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: {
  options = {
    bash.enable = lib.mkEnableOption "Whether to enable bash";
  };

  config = lib.mkIf config.bash.enable {
    programs.bash = {
      enable = true;
    };
  };
}
