{inputs, ...}: let
  inherit (inputs) nix-helpers;
in {
  imports = nix-helpers.lib.path.collectImportsList ./.;
}
