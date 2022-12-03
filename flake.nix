{
  description = "My NixOS / home-manager configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.11";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-22.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ { nixpkgs, nixpkgs-unstable, home-manager, fenix, ... }:
    let
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
      unstablePkgs = nixpkgs-unstable.legacyPackages."x86_64-linux";
    in
    {
      nixosConfigurations.tp01 =
        nixpkgs.lib.nixosSystem rec {
          system = "x86_64-linux";
          specialArgs = {
            inherit inputs pkgs unstablePkgs;
          };
          modules = [ ./hosts/tp01.nix ./hosts/shared.nix ];
        };

      homeConfigurations.carl = home-manager.lib.homeManagerConfiguration {
        modules = [
          ./users/carl/home.nix
        ];

        inherit pkgs;

        extraSpecialArgs = {
          inherit inputs unstablePkgs;
          system = "x86_64-linux";
        };
      };
    };
}
