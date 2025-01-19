{
  description = "Your new nix config";

  inputs = {
    # Nixpkgs
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };

    # Nix-Darwin
    nix-darwin = {
      url = "github:LnL7/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Home manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # HyprPanel
    hyprpanel = {
      url = "github:Jas-SinghFSU/hyprpanel";
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
    systems = [
      "x86_64-linux"
      "aarch64-darwin"
    ];

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
    # Available through 'nixos-rebuild --flake .#hostname'
    nixosConfigurations = {
      alioth = lib.custom.mkNixosConfig {
        hostname = "alioth";
      };
    };

    # nix-darwin configuration entrypoing
    # Available through 'darwin-rebuild switch --flake .#hostname'
    darwinConfigurations = {
      "zaurak" = lib.custom.mkDarwinConfig {
        username = "keon";
        hostname = "zaurak";
        system = "aarch64-darwin";
      };
    };

    # Standalone home-manager configuration entrypoint
    # Available through 'home-manager switch --flake .#username@hostname'
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
