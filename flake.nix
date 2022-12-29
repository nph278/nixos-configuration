{
  description = "My NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.11";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ { nixpkgs, nixpkgs-unstable, fenix, ... }:
    {
      nixosConfigurations.tp01 =
        nixpkgs.lib.nixosSystem rec {
          system = "x86_64-linux";
          specialArgs = {
            inherit inputs;
            pkgs = nixpkgs.legacyPackages.${system};
            unstablePkgs = nixpkgs-unstable.legacyPackages.${system};
          };
          modules = [ ./hosts/tp01.nix ./hosts/shared.nix ];
        };
    };
}
