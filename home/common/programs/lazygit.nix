{
  lib,
  config,
  ...
}: {
  options = {
    lazygit.enable = lib.mkEnableOption "Whether to enable lazygit";
  };

  config = lib.mkIf config.lazygit.enable {
    programs.lazygit = {
      enable = true;

      settings = {
        gui.theme = {
          activeBorderColor = ["#89b4fa" "bold"];
          inactiveBorderColor = ["#c6c6c6"];
          optionsTextColor = ["#89b4fa"];
          selectedLineBgColor = ["#262626"];
          cherryPickedCommitBgColor = ["#393939"];
          cherryPickedCommitFgColor = ["#89b4fa"];
          unstagedChangesColor = ["#f38ba8"];
          defaultFgColor = ["#f4f4f4"];
          searchingActiveBorderColor = ["#f9e2af"];
        };

        authorColors = {
          "*" = "#b4befe";
        };
      };
    };
  };
}
