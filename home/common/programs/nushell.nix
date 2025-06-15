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
        b = "bat";
        d = "docker";
        f = "fd";
        g = "lazygit";
        k = "kubecolor";
        l = "ls";
        ll = "ls -la";
        r = "rg";
        s = "sudo";
        t = "tmux";
        v = "nvim";
        y = "yazi";
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
