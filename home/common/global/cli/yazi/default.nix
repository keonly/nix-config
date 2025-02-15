{pkgs, ...}: let
  plugins-repo = pkgs.fetchFromGitHub {
    owner = "yazi-rs";
    repo = "plugins";
    rev = "8945e543ebbaa25de155b7101a917eba007252f2";
    sha256 = "sha256-ko/vvItKtQSz5rbP3TMb4R1bywW2q8hj7E/A++vhVqQ=";
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
        rev = "d1cd0a38aa6a2c2e86e62a466f43e415f781031e";
        sha256 = "sha256-XiEsykudwYmwSNDO41b5layP1DqVa89e6Emv9Qf0mz0=";
      };
    };

    initLua = ''
      require("full-border"):setup()
      require("git"):setup()
      require("starship"):setup({ config_file = "${starship-path}" })
    '';
  };
}
