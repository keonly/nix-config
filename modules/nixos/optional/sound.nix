{
  lib,
  config,
  ...
}: {
  options = {
    pipewire.enable = lib.mkEnableOption "Whether to enable PipeWire service";
  };

  config = lib.mkIf config.pipewire.enable {
    services.pipewire = {
      enable = true;

      alsa = {
        enable = true;
        support32Bit = true;
      };

      pulse = {
        enable = true;
      };
    };
  };
}
