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
      "1password"
    ];
  };
}
