{
  inputs,
  lib,
  vars,
  system,
  mkSpecialArgs,
  ...
} @ args: let
  name = "alioth";
  modules = {
    nixosModules = [];
    homeModules = [];
  };
  systemArgs = modules // args;
in {
  nixosConfigurations.${name} = lib.nixosSystem systemArgs;
}
