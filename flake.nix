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

  outputs = { nixpkgs, nixpkgs-unstable, home-manager, fenix, ... }:
    {
      nixosConfigurations.tp01 =
        let
          system = "x86_64-linux";
          pkgs = import nixpkgs { inherit system; };
          unstablePkgs = import nixpkgs-unstable { inherit system; };
        in
        nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = { inherit pkgs unstablePkgs home-manager fenix; };
          modules = [ ./hosts/tp01.nix ./hosts/shared.nix ];
        };
    };
}
