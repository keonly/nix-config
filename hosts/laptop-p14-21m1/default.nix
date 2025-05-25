{
  config,
  lib,
  pkgs,
  ...
}: {
  environment = {
    systemPackages = with pkgs; [
      kubectl
      kubectx
      kubernetes-helm
      helmfile
    ];
  };

  homebrew = {
    casks = [
      "proton-drive"
      "proton-mail"
      "proton-pass"
    ];
  };

  fonts.enable = true;
}
