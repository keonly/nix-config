{
  pkgs,
  firefox-addons,
  ...
}: {
  packages = with firefox-addons.packages.${pkgs.system}; [
    ublock-origin
    sponsorblock
    dearrow
    youtube-no-translation
    firefox-color
    stylus
    temporary-containers
    tridactyl
  ];
}
