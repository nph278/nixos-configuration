{
  description = "My NixOS / home-manager configuration";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.05";
  inputs.nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.home-manager.url = "github:nix-community/home-manager/release-22.05";

  outputs = { nixpkgs, ... }@attrs: {
    nixosConfigurations.tp01 = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = attrs;
      modules = [ ./hosts/tp01.nix ];
    };
  };
}
