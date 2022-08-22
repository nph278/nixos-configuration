{
  description = "My NixOS / home-manager configuration";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.05";
  inputs.nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.home-manager.url = "github:nix-community/home-manager/release-22.05";

  outputs = { nixpkgs, nixpkgs-unstable, home-manager, ... }:
    {
      nixosConfigurations.tp01 =
        let
          system = "x86_64-linux";
          pkgs = import nixpkgs { inherit system; };
          unstablePkgs = import nixpkgs-unstable { inherit system; };
        in
        nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = { inherit pkgs unstablePkgs home-manager; };
          modules = [ ./hosts/tp01.nix ];
        };
    };
}
