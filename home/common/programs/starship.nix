{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: {
  options = {
    starship.enable = lib.mkEnableOption "Whether to enable starship";
  };

  config = lib.mkIf config.starship.enable {
    programs.starship = {
      enable = true;

      enableBashIntegration = true;
      enableNushellIntegration = true;
      enableZshIntegration = true;

      settings = {
        format = lib.concatStrings [
          "$os"
          "$username"
          "$hostname"
          "[ ](bg:surface0 fg:text)"
          "$directory"
          "[ ](bg:peach fg:text)"
          "$git_branch"
          "$git_status"
          "[ ](bg:yellow fg:text)"
          "$c"
          "$rust"
          "$ocaml"
          "$lua"
          "$golang"
          "$nodejs"
          "$php"
          "$java"
          "$kotlin"
          "$haskell"
          "$python"
          "$conda"
          "[ ](bg:green fg:text)"
          "$nix_shell"
          "[ ](bg:blue fg:text)"
          "$kubernetes"
          "$time"
          "$line_break"
          "$character"
        ];

        # OS module configuration
        os = {
          disabled = false;
          style = "bg:surface0 fg:text";
          symbols = {
            Windows = " 󰍲";
            Ubuntu = " 󰕈";
            SUSE = " ";
            Raspbian = " 󰐿";
            Mint = " 󰣭";
            Macos = " ";
            Manjaro = " ";
            Linux = " 󰌽";
            Gentoo = " 󰣨";
            Fedora = " 󰣛";
            Alpine = " ";
            Amazon = " ";
            Android = " ";
            Arch = " 󰣇";
            Artix = " 󰣇";
            CentOS = " ";
            Debian = " 󰣚";
            Redhat = " 󱄛";
            RedHatEnterprise = " 󱄛";
            NixOS = " 󱄅";
          };
        };

        # Username module configuration
        username = {
          show_always = true;
          style_user = "bg:surface0 fg:text";
          style_root = "bg:surface0 fg:text";
          format = "[ $user]($style)";
        };

        # Hostname module configuration
        hostname = {
          ssh_only = true;
          ssh_symbol = "@";
          style = "bg:surface0 fg:text";
          format = "[$ssh_symbol$hostname]($style)";
        };

        # Directory module configuration
        directory = {
          style = "fg:mantle bg:red";
          format = "[ $path ]($style)";
          truncation_length = 3;
          truncation_symbol = "… /";
          substitutions = {
            "Documents" = "󰈙 ";
            "Downloads" = " ";
            "Music" = "󰝚 ";
            "Pictures" = " ";
            "Developer" = "󰲋 ";
          };
        };

        # Git branch module configuration
        git_branch = {
          symbol = "";
          style = "bg:peach fg:mantle";
          format = "[$symbol $branch]($style)";
        };

        # Git status module configuration
        git_status = {
          style = "bg:peach fg:mantle";
          format = "[\\[$all_status$ahead_behind\\] ]($style)";
        };

        # Language modules configuration
        c = {
          symbol = " ";
          style = "bg:yellow fg:base";
          format = "[$symbol( $version) ]($style)";
        };

        rust = {
          symbol = "";
          style = "bg:yellow fg:base";
          format = "[$symbol( $version) ]($style)";
        };

        ocaml = {
          symbol = "";
          style = "bg:yellow fg:base";
          format = "[$symbol( $version) ]($style)";
        };

        lua = {
          symbol = "";
          style = "bg:yellow fg:base";
          format = "[$symbol( $version) ]($style)";
        };

        golang = {
          symbol = "";
          style = "bg:yellow fg:base";
          format = "[$symbol( $version) ]($style)";
        };

        nodejs = {
          symbol = "";
          style = "bg:yellow fg:base";
          format = "[$symbol( $version) ]($style)";
        };

        php = {
          symbol = "";
          style = "bg:yellow fg:base";
          format = "[$symbol( $version) ]($style)";
        };

        java = {
          symbol = "";
          style = "bg:yellow fg:base";
          format = "[$symbol( $version) ]($style)";
        };

        kotlin = {
          symbol = "";
          style = "bg:yellow fg:base";
          format = "[$symbol( $version) ]($style)";
        };

        haskell = {
          symbol = "";
          style = "bg:yellow fg:base";
          format = "[$symbol( $version) ]($style)";
        };

        python = {
          symbol = "";
          style = "bg:yellow fg:base";
          format = "[$symbol( $version) ]($style)";
        };

        conda = {
          style = "bg:yellow fg:base";
          format = "[\\($environment\\) ]($style)";
        };

        # Docker context module configuration
        nix_shell = {
          symbol = "󱄅";
          style = "bg:green fg:base";
          format = "[[$symbol $name\\($state\\) ]($style)]($style)";
        };

        # Kubernetes module configuration
        kubernetes = {
          disabled = false;
          style = "bg:blue fg:base";
          symbol = "󱃾";
          format = "[$symbol $context( \\($namespace\\)) ]($style)";
        };

        # Time module configuration
        time = {
          disabled = false;
          time_format = "%R";
          style = "bg:mauve fg:base";
          format = "[  $time ]($style)";
        };

        # Line break module configuration
        line_break = {
          disabled = false;
        };

        # Character module configuration
        character = {
          disabled = false;
          success_symbol = "[](bold fg:green)";
          error_symbol = "[](bold fg:red)";
          vimcmd_symbol = "[](bold fg:green)";
          vimcmd_replace_one_symbol = "[](bold fg:purple)";
          vimcmd_replace_symbol = "[](bold fg:purple)";
          vimcmd_visual_symbol = "[](bold fg:lavender)";
        };
      };
    };
  };
}
