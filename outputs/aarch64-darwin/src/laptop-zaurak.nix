{
  inputs,
  lib,
  extraLib,
  vars,
  system,
  specialArgs,
  ...
} @ args: let
  name = "zaurak";

  modules = {
    darwinModules =
      [
        "modules/darwin"
        "hosts/laptop-${name}"
      ]
      |> lib.lists.map extraLib.path.relativeToRoot;
    homeModules =
      [
        "home/darwin"
        "hosts/laptop-${name}/home.nix"
      ]
      |> lib.lists.map extraLib.path.relativeToRoot;
  };
in {
  darwinConfigurations.${name} = extraLib.darwinSystem (modules // args);
}
