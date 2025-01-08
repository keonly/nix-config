{
  lib,
  config,
  ...
}: {
  options = {
    awscli.enable = lib.mkEnableOption "Whether to enable awscli";
  };

  config = lib.mkIf config.awscli.enable {
    programs.awscli = {
      enable = true;

      settings = {
        "default" = {
          region = "us-west-2";
          output = "json";
        };
      };
    };
  };
}
