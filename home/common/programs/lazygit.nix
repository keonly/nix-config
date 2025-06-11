{
  lib,
  config,
  ...
}: {
  options = {
    lazygit.enable = lib.mkEnableOption "Whether to enable lazygit";
  };

  config = lib.mkIf config.lazygit.enable {
    catppuccin.lazygit.enable = false;

    programs.lazygit = {
      enable = true;

      settings = {
        gui = {
          nerdFontsVersion = "3";

          theme = {
            activeBorderColor = ["#f4f4f4" "bold"];
            cherryPickedCommitBgColor = ["#f2cdcd"];
            cherryPickedCommitFgColor = ["#89b4fa"];
            defaultFgColor = ["#f4f4f4"];
            inactiveBorderColor = ["#8d8d8d"];
            optionsTextColor = ["#89b4fa"];
            searchingActiveBorderColor = ["#393939" "bold"];
            selectedLineBgColor = ["#393939"];
            unstagedChangesColor = ["#f38ba8"];
          };
        };

        git = {
          paging = {
            colorArg = "always";
            pager = "delta --dark --paging=never";
            useConfig = false;
          };
        };
      };
    };
  };
}
