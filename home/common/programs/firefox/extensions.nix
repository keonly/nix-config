{
  pkgs,
  firefox-addons,
  ...
}: {
  packages = with firefox-addons.packages.${pkgs.system}; [
    ublock-origin
    sponsorblock
    firefox-color
    stylus
    temporary-containers
    tridactyl
  ];
}
