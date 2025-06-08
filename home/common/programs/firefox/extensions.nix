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
    sidebery
    temporary-containers
    tridactyl
  ];
}
