{
  pkgs,
  lib,
  config,
  nix-helpers,
  arkenfox-nixos,
  textfox,
  firefox-addons,
  ...
}: let
  firefoxVersion = "${lib.versions.major config.programs.firefox.package.version}.0";
  arkenfoxVersion = nix-helpers.lib.versions.largestVersion arkenfox-nixos.lib.arkenfox.supportedVersions;
in {
  options = {
    firefox.enable = lib.mkEnableOption "Whether to enable firefox";
  };

  imports = [
    arkenfox-nixos.hmModules.arkenfox
    textfox.homeManagerModules.default
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

      arkenfox = {
        enable = true;
        version = arkenfoxVersion;
      };

      policies = import ./policies.nix;
      profiles = {
        "default" = {
          arkenfox = {
            enable = true;
            enableAllSections = true;
          };
          extensions = import ./extensions.nix {inherit pkgs firefox-addons;};
          search = import ./search.nix {inherit pkgs;};
        };
      };
    };

    textfox = {
      enable = true;

      profile = "default";
      useLegacyExtensions = false;
      config = {
        border = {
          radius = "4px";
        };
      };
    };
  };
}
