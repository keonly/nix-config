{
  lib,
  inputs,
  mkSpecialArgs,
  system,
  vars,
  nix-helpers,
  ...
} @ args: let
  specialArgs = mkSpecialArgs {
    inherit inputs system vars;
  };
in
  {
    src = ./src;
    inputs = args // {inherit specialArgs;};
  }
  |> nix-helpers.lib.path.loadImportsList
  |> nix-helpers.lib.attrsets.mergeAttrsListRecursive
