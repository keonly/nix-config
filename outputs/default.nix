{
  self,
  nixpkgs,
  haumea,
  nix-helpers,
  ...
} @ inputs: let
  lib = nixpkgs.lib;
  extraLib = import ../lib {inherit lib haumea;};
  vars = import ../vars {inherit lib;};

  mkSpecialArgs = {
    inputs,
    system,
    vars,
  }:
    inputs
    // {
      inherit vars;
      pkgs-unstable = import inputs.nixpkgs-unstable {
        inherit system;
        config.allowUnfree = true;
      };

      pkgs-stable = import inputs.nixpkgs-stable {
        inherit system;
        config.allowUnfree = true;
      };
    };

  args = {
    inherit inputs lib extraLib vars mkSpecialArgs nix-helpers;
  };

  nixosSystems = {
    # x86_64-linux = import ./x86_64-linux (args // {system = "x86_64-linux";});
  };
  darwinSystems = {
    aarch64-darwin = import ./aarch64-darwin (args // {system = "aarch64-darwin";});
    # x86_64-darwin = import ./x86_64-darwin (args // {system = "x86_64-darwin";});
  };

  allSystems = nixosSystems // darwinSystems;
  allSystemNames = lib.attrsets.attrNames allSystems;
  allSystemConfigurations =
    allSystems
    |> lib.attrsets.attrValues
    |> nix-helpers.lib.attrsets.mergeAttrsListRecursive;

  forEachSystem = f: (
    lib.genAttrs allSystemNames f
  );
in {
  inherit (allSystemConfigurations) nixosConfigurations darwinConfigurations;

  formatter = forEachSystem (system: nixpkgs.legacyPackages.${system}.alejandra);
}
