{
  nixpkgs,
  flake-parts,
  git-hooks-nix,
  haumea,
  nix-helpers,
  catppuccin,
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
    inherit inputs lib extraLib vars mkSpecialArgs haumea nix-helpers catppuccin;
  };

  systems =
    ./.
    |> nix-helpers.lib.path.collectImportsList
    |> lib.lists.map (builtins.baseNameOf);

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
    imports = [
      git-hooks-nix.flakeModule
    ];

    inherit systems;
    perSystem = {
      config,
      pkgs,
      ...
    }: {
      formatter = pkgs.alejandra;

      pre-commit.settings.hooks = {
        # Nix
        alejandra.enable = true;

        # TOML
        check-toml.enable = true;
        taplo.enable = true;

        # YAML
        check-yaml.enable = true;
        yamlfmt.enable = true;
        yamllint.enable = true;

        # Secret detection
        # trufflehog.enable = true;
        trufflehog-custom = {
          enable = true;
          description = "Temporary fix for https://github.com/cachix/git-hooks.nix/issues/584";
          pass_filenames = false;
          entry = let
            script = pkgs.writeShellScript "precommit-trufflehog" ''
              set -e
              ${pkgs.trufflehog}/bin/trufflehog git "file://$(git rev-parse --show-top-level)" --since-commit HEAD --only-verified --fail
            '';
          in
            builtins.toString script;
        };

        # Spell check
        typos.enable = true;
      };

      devShells.default = pkgs.mkShell {
        shellHook = ''
          ${config.pre-commit.installationScript}
          echo 1>&2 "Welcome to the development shell!"
        '';
      };
    };

    flake = {
      inherit (allConfigurations) nixosConfigurations darwinConfigurations;
    };
  }
