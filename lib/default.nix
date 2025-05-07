# This file is a lib‑extension function: `final: prev: { …. }`
# – `prev` = the expected upstream nixpkgs lib
# – `final` = the final lib (prev + everything added here)
final: prev: {
  attrsets = prev.attrsets // (import ./attrsets.nix {lib = final;});
  homeManagerBlock = import ./home-manager-block.nix;

  # pass the merged lib in a wrapper
  darwinSystem = args: import ./darwin-system.nix (args // {lib = final;});
  nixosSystem = args: import ./nixos-system.nix (args // {lib = final;});
}
