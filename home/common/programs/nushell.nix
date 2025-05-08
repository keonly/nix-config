{
  lib,
  config,
  ...
}: {
  options = {
    nushell.enable = lib.mkEnableOption "Whether to enable nushell";
  };

  config = lib.mkIf config.nushell.enable {
    programs.nushell = {
      enable = true;

      settings = {
        show_banner = false;
        ls = {
          use_ls_colors = true;
          clickable_links = true;
        };
      };
    };
  };
}
