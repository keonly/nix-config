{pkgs, ...}: {
  default = "startpage";
  force = true;

  engines = {
    nix-packages = {
      name = "Nix Packages";
      urls = [
        {
          template = "https://search.nixos.org/packages";
          params = [
            {
              name = "type";
              value = "packages";
            }
            {
              name = "query";
              value = "{searchTerms}";
            }
          ];
        }
      ];

      icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
      definedAliases = ["@np"];
    };

    nixos-wiki = {
      name = "NixOS Wiki";
      urls = [{template = "https://wiki.nixos.org/w/index.php?search={searchTerms}";}];
      iconMapObj."16" = "https://wiki.nixos.org/favicon.ico";
      definedAliases = ["@nw"];
    };

    startpage = {
      name = "Startpage";
      urls = [{template = "https://www.startpage.com/sp/search?query={searchTerms}&cat=web&pl=opensearch";}];
      definedAliases = ["@s"];
    };

    "google".metaData.hidden = true;
    "qwant".metaData.hidden = true;
    "bing".metaData.hidden = true;
    "ecosia".metaData.hidden = true;
  };
}
