{
  description = "My NixOS / home-manager configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-22.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ nixpkgs, nixpkgs-unstable, home-manager, fenix, ... }:
    {
      nixosConfigurations.tp01 =
        nixpkgs.lib.nixosSystem rec {
          system = "x86_64-linux";
          specialArgs = {
            inherit home-manager fenix inputs;
            pkgs = nixpkgs.legacyPackages.${system};
            unstablePkgs = nixpkgs-unstable.legacyPackages.${system};
          };
          modules = [ ./hosts/tp01.nix ./hosts/shared.nix ];
        };
    };
}
