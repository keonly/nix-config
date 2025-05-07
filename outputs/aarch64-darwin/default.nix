{
  lib,
  inputs,
  mkSpecialArgs,
  system,
  vars,
  ...
} @ args: let
  inherit (inputs) haumea;

  specialArgs = mkSpecialArgs {
    inherit inputs system vars;
  };

  data = haumea.lib.load {
    src = ./src;
    inputs =
      args
      // {
        inherit specialArgs;
      };
  };

  outputs =
    data
    |> lib.attrsets.attrValues
    |> lib.attrsets.mergeAttrsListRecursive;
in
  outputs
  // {
    data = data;
  }
