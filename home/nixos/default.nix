{
  vars,
  nix-helpers,
  ...
}: let
  commonImports = [../common];
  nixosImports = nix-helpers.lib.path.collectImportsList ./.;
in {
  home.homeDirectory = "/home/${vars.username}";
  imports = commonImports ++ nixosImports;
  xdg.enable = true;
}
