{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: {
  options = {
    nushell.enable = lib.mkEnableOption "Whether to enable nushell";
  };

  config = lib.mkIf config.nushell.enable {
    programs.nushell = {
      enable = true;

      shellAliases = let
        direnvWrap = cmd:
          if config.direnv.enable
          then "direnv exec / ${cmd}"
          else "${cmd}";
      in
        {
          b = "bat";
          d = "docker";
          g = "lazygit";
          k = "kubecolor";
          l = "ls";
          ll = "ls -la";
          r = "rg";
          s = "sudo";
          y = "yazi";
        }
        // {
          t = direnvWrap "tmux";
          v = direnvWrap "nvim";
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

      extraConfig =
        # nu
        ''
          $env.config = {
            keybindings: [
              {
                modifier: control
                keycode: space
                mode: [emacs, vi_normal, vi_insert]
                event: null
              }
            ]
          }
        '';
    };
  };
}
