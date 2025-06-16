{
  inputs,
  vars,
  ...
}: let
  inherit (inputs) nix-helpers;

  commonImports = [../common];
  nixosImports = nix-helpers.lib.path.collectImportsList ./.;
in {
  home.homeDirectory = "/home/${vars.username}";
  imports = commonImports ++ nixosImports;
  xdg.enable = true;
}
