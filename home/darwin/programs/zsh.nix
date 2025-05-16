{
  lib,
  config,
  ...
}: {
  options = {
    zsh.enable = lib.mkEnableOption "Whether to enable zsh";
  };

  config = lib.mkIf config.zsh.enable {
    programs.zsh = {
      enable = true;

      initContent =
        ""
        + lib.optionalString config.nushell.enable
        ''
          if [[ ! $(ps -T -o "comm" | tail -n +2 | grep "nu$") && -z $ZSH_EXECUTION_STRING ]]; then
              if [[ -o login ]]; then
                    LOGIN_OPTION='--login'
              else
                    LOGIN_OPTION='''
              fi
              exec nu "$LOGIN_OPTION"
          fi
        '';
    };
  };
}
