{
  description = "Your new nix config";

  inputs = {
    # Nixpkgs
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-24.11";
    };
    # You can access packages and modules from different nixpkgs revs
    # at the same time. Here's an working example:
    nixpkgs-unstable = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };
    # Also see the 'unstable-packages' overlay at 'overlays/default.nix'.

    # Nix-Darwin
    nix-darwin = {
      url = "github:LnL7/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Home manager
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    inherit (self) outputs;
    lib = nixpkgs.lib.extend (self: super: {
      custom = import ./lib {
        inherit self inputs;
      };
    });
    # Supported systems for your flake packages, shell, etc.
    systems = [
      "x86_64-linux"
      "aarch64-darwin"
    ];
    # This is a function that generates an attribute by calling a function you
    # pass to it, with each system as an argument
    forAllSystems = nixpkgs.lib.genAttrs systems;
  in {
    # Your custom packages
    # Accessible through 'nix build', 'nix shell', etc
    packages = forAllSystems (system: import ./pkgs nixpkgs.legacyPackages.${system});
    # Formatter for your nix files, available through 'nix fmt'
    # Other options beside 'alejandra' include 'nixpkgs-fmt'
    formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.alejandra);

    # Your custom packages and modifications, exported as overlays
    overlays = import ./overlays {inherit inputs;};
    # Reusable nixos modules you might want to export
    # These are usually stuff you would upstream into nixpkgs
    nixosModules = import ./modules/nixos;
    # Reusable home-manager modules you might want to export
    # These are usually stuff you would upstream into home-manager
    homeManagerModules = import ./modules/home-manager;

    # NixOS configuration entrypoint
    # Available through 'nixos-rebuild --flake .#your-hostname'
    nixosConfigurations = {
      alioth = lib.custom.mkNixosConfig {
        hostname = "alioth";
      };
    };

    # nix-darwin configuration entrypoing
    # Available through 'darwin-rebuild switch --flake .#$your_hostname'
    darwinConfigurations = {
      "zaurak" = lib.custom.mkDarwinConfig {
        username = "keon";
        hostname = "zaurak";
        system = "aarch64-darwin";
      };
    };

    # Standalone home-manager configuration entrypoint
    # Available through 'home-manager --flake .#your-username@your-hostname'
    homeConfigurations = {
      "keon@alioth" = lib.custom.mkHomeConfig {
        username = "keon";
        hostname = "alioth";
        system = "x86_64-linux";
      };

      "keon@zaurak" = lib.custom.mkHomeConfig {
        username = "keon";
        hostname = "zaurak";
        system = "aarch64-darwin";
      };
    };
  };
}
