{
  vars,
  nix-helpers,
  ...
}: let
  commonImports = [../common];
  darwinImports = nix-helpers.lib.path.collectImportsList ./.;
in {
  home.homeDirectory = "/Users/${vars.username}";
  imports = commonImports ++ darwinImports;
  xdg.enable = true;
}
