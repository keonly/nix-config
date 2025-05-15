{
  nixpkgs,
  flake-parts,
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
    inherit inputs lib extraLib vars mkSpecialArgs haumea nix-helpers;
  };

  systems = [
    # "x86_64-linux"
    "aarch64-darwin"
  ];

  importSystem = system: import ./${system} (args // {system = system;});
  mkConfigurations = (
    systems:
      systems
      |> lib.lists.map importSystem
      |> nix-helpers.lib.attrsets.mergeAttrsListRecursive
  );
  allConfigurations = mkConfigurations systems;
in
  flake-parts.lib.mkFlake {inherit inputs;} {
    inherit systems;
    perSystem = {pkgs, ...}: {
      formatter = pkgs.alejandra;
    };

    flake = {
      inherit (allConfigurations) nixosConfigurations darwinConfigurations;
    };
  }
