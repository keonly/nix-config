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

      shellAliases = {
        nv = "nvim";
        lg = "lazygit";
        ll = "ls -la";
        k = "kubecolor";
        yz = "yazi";
      };

      settings = {
        show_banner = false;
        ls = {
          use_ls_colors = true;
          clickable_links = true;
        };
        edit_mode = "vi";
      };

      environmentVariables = {
        PROMPT_INDICATOR = "";
        PROMPT_INDICATOR_VI_INSERT = "󰁔 ";
        PROMPT_INDICATOR_VI_NORMAL = "󰁍 ";
        PROMPT_MULTILINE_INDICATOR = "::: ";
      };
    };
  };
}
