{
  lib,
  config,
  pkgs,
  ...
}: {
  options = {
    nvidia.enable = lib.mkEnableOption "Whether to enable settings for NVIDIA GPU";
  };

  config = lib.mkIf config.nvidia.enable {
    nixpkgs.config.allowUnfreePredicate = pkg:
      builtins.elem (lib.getName pkg) [
        "nvidia-x11"
        "nvidia-settings"
        "nvidia-persistenced"
      ];

    # https://nixos.wiki/wiki/Nvidia
    hardware = {
      # Enable OpenGL
      graphics = {
        enable = true;
      };

      nvidia = {
        # Modesetting is required.
        modesetting.enable = true;

        powerManagement = {
          # Nvidia power management. Experimental, and can cause sleep/suspend to fail.
          # Enable this if you have graphical corruption issues or application crashes after waking
          # up from sleep. This fixes it by saving the entire VRAM memory to /tmp/ instead
          # of just the bare essentials.
          enable = true;

          # Fine-grained power management. Turns off GPU when not in use.
          # Experimental and only works on modern Nvidia GPUs (Turing or newer).
          finegrained = false;
        };

        # Use the NVidia open source kernel module (not to be confused with the
        # independent third-party "nouveau" open source driver).
        # Support is limited to the Turing and later architectures. Full list of
        # supported GPUs is at:
        # https://github.com/NVIDIA/open-gpu-kernel-modules#compatible-gpus
        # Only available from driver 515.43.04+
        open = true;

        # Enable the Nvidia settings menu,
        # accessible via `nvidia-settings`.
        nvidiaSettings = true;

        # Optionally, you may need to select the appropriate driver version for your specific GPU.
        package = config.boot.kernelPackages.nvidiaPackages.stable;
      };
    };

    services.xserver.videoDrivers = ["nvidia"];

    environment.sessionVariables = {
      LIBVA_DRIVER_NAME = "nvidia";
      __GLX_VENDOR_LIBRARY_NAME = "nvidia";
      ELECTRON_OZONE_PLATFORM_HINT = "auto";
      NVD_BACKEND = "direct";
    };
  };
}
