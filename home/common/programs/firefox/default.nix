{
  config,
  pkgs,
  lib,
  inputs,
  sources,
  ...
}: let
  inherit (inputs) nix-helpers arkenfox-nixos firefox-addons;
  inherit (sources) firefox-ultima;

  defaultProfileName = "default";

  firefoxVersion = "${lib.versions.major config.programs.firefox.package.version}.0";
  arkenfoxVersion = nix-helpers.lib.versions.largestVersion arkenfox-nixos.lib.arkenfox.supportedVersions;
in {
  options = {
    firefox.enable = lib.mkEnableOption "Whether to enable firefox";
  };

  imports = [
    arkenfox-nixos.hmModules.arkenfox
  ];

  config = lib.mkIf config.firefox.enable {
    assertions = [
      {
        assertion = let
          isVersionCompatible = nix-helpers.lib.versions.versionAtLeast firefoxVersion arkenfoxVersion;
        in
          isVersionCompatible;
        message = "Firefox version ${firefoxVersion} is less than required Arkenfox version ${arkenfoxVersion}. Please update Firefox or use a compatible Arkenfox version.";
      }
    ];

    programs.firefox = {
      enable = true;
      package = pkgs.firefox;

      arkenfox = {
        enable = true;
        version = arkenfoxVersion;
      };

      policies = import ./policies.nix;
      profiles = {
        "${defaultProfileName}" = {
          extensions = import ./extensions.nix {inherit pkgs firefox-addons;};
          search = import ./search.nix {inherit pkgs;};
          userChrome = builtins.readFile ./userChrome.css;

          arkenfox = {
            enable = true;
            enableAllSections = true;
          };
        };
      };
    };

    home.file = let
      profilePath =
        if pkgs.stdenv.isDarwin
        then "Library/Application\ Support/Firefox/Profiles"
        else ".mozilla/firefox";
    in {
      "${profilePath}/${defaultProfileName}/chrome/styles" = {
        source = ./styles;
        recursive = true;
      };
    };
  };
}
