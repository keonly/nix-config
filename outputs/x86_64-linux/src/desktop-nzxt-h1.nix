{
  inputs,
  lib,
  extraLib,
  vars,
  system,
  specialArgs,
  ...
} @ args: let
  name = "nzxt-h1";

  modules = {
    nixosModules =
      [
        "modules/nixos"
        "hosts/desktop-${name}"
      ]
      |> lib.lists.map extraLib.path.relativeToRoot;
    homeModules =
      ([
          "home/nixos"
          "hosts/desktop-${name}/home.nix"
        ]
        |> lib.lists.map extraLib.path.relativeToRoot)
      ++ [
        inputs.nix-doom-emacs-unstraightened.homeModule
      ];
  };
in {
  nixosConfigurations.${name} = extraLib.nixosSystem (modules // args);
}
