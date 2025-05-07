{
  inputs,
  lib,
  vars,
  system,
  mkSpecialArgs,
  ...
} @ args: let
  name = "zaurak";
  modules = {
    darwinModules = [
      "../modules/darwin"
      "../hosts/laptop-${name}"
    ];
    homeModules = [
      "../home/darwin"
      "../hosts/laptop-${name}/home.nix"
    ];
  };
  systemArgs = modules // args;
in {
  darwinModules.${name} = lib.darwinSystem systemArgs;
}
