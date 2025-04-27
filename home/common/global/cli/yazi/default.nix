{pkgs, lib, ...}: let
  plugins-repo = pkgs.fetchFromGitHub {
    owner = "yazi-rs";
    repo = "plugins";
    rev = "4b027c79371af963d4ae3a8b69e42177aa3fa6ee";
    sha256 = "sha256-auGNSn6tX72go7kYaH16hxRng+iZWw99dKTTUN91Cow=";
  };
  starship-path = ./starship.toml;
in {
  programs.yazi = {
    enable = true;

    # Shell integrations
    enableBashIntegration = true;
    enableFishIntegration = true;
    enableNushellIntegration = true;
    enableZshIntegration = true;

    settings = {
      manager = {
        sort_dir_first = true;
        show_hidden = true;
      };
    };

    theme = import ./theme.nix;

    keymap = {
      manager = {
        prepend_keymap = [
          {
            on = ["c" "m"];
            run = "plugin chmod";
            desc = "Chmod on selected files";
          }
          {
            on = ["<C-d>"];
            run = "plugin diff";
            desc = "Diff the selected with the hovered file";
          }
          {
            on = ["M"];
            run = "plugin mount";
            desc = "Open mount manager";
          }
        ];
      };
    };

    plugins = {
      chmod = "${plugins-repo}/chmod.yazi";
      diff = "${plugins-repo}/diff.yazi";
      full-border = "${plugins-repo}/full-border.yazi";
      git = "${plugins-repo}/git.yazi";
      mount = "${plugins-repo}/mount.yazi";
      starship = pkgs.fetchFromGitHub {
        owner = "Rolv-Apneseth";
        repo = "starship.yazi";
        rev = "6fde3b2d9dc9a12c14588eb85cf4964e619842e6";
        sha256 = "sha256-+CSdghcIl50z0MXmFwbJ0koIkWIksm3XxYvTAwoRlDY=";
      };
    };

    initLua = ''
      require("full-border"):setup()
      require("git"):setup()
      require("starship"):setup({ config_file = "${starship-path}" })
    '';
  };
}
