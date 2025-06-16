{
  inputs,
  mkSpecialArgs,
  system,
  vars,
  sources,
  haumea,
  nix-helpers,
  ...
} @ args: let
  specialArgs = mkSpecialArgs {
    inherit inputs sources system vars;
  };
in
  {
    src = ./src;
    inputs = args // {inherit specialArgs;};
  }
  |> haumea.lib.load
  |> builtins.attrValues
  |> nix-helpers.lib.attrsets.mergeAttrsListRecursive
