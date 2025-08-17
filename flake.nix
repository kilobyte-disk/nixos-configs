{
  description = "NixOS configuration flake";

  inputs = {
    # nixpkgs branch
    nixpgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      specialArgs = {
        inherit inputs;
      };
    in
    {
      nixosConfigurations.lg = nixpkgs.lib.nixosSystem {
        modules = [
          ./systems/lg.nix
        ];
      };

      nixosConfiguration.aperture = nixpkgs.lib.nixosSystem {
        modules = [
          ./systems/aperture.nix
        ];
      };

    };
}

