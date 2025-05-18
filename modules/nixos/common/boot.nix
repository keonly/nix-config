{lib, ...}: {
  boot = {
    loader = {
      efi = {
        canTouchEfiVariables = true;
      };

      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
        useOSProber = true;

        backgroundColor = "#000000";
      };

      timeout = lib.mkDefault 10;
    };
  };
}
