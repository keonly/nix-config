{
  lib,
  inputs,
  mkSpecialArgs,
  system,
  vars,
  haumea,
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
  |> haumea.lib.load {inherit (args) src inputs;}
  |> builtins.attrValues
  |> nix-helpers.lib.attrsets.mergeAttrsListRecursive
