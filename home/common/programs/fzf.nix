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

      colors = {
        bg = "#161616";
        "bg+" = "#262626";
        spinner = "#f5e0dc";
        hl = "#f38ba8";
        fg = "#f4f4f4";
        header = "#f38ba8";
        info = "#cba6f7";
        pointer = "#f5e0dc";
        marker = "#b4befe";
        "fg+" = "#f4f4f4";
        prompt = "#cba6f7";
        "hl+" = "#f38ba8";
        selected-bg = "#393939";
        border = "#262626";
        label = "#f4f4f4";
      };
    };
  };
}
