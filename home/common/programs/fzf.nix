{
  lib,
  config,
  ...
}: {
  options = {
    fzf.enable = lib.mkEnableOption "Whether to enable fzf";
  };

  config = lib.mkIf config.fzf.enable {
    programs.fzf = {
      enable = true;
    };
  };
}
