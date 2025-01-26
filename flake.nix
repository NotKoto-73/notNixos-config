{
   description = "FlakesFox & WinterTime";

  inputs = {
    nixpkgs.url = "nixpkgs/master";
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    nixos-conf-editor.url = "github:snowfallorg/nixos-conf-editor";
    nix-software-center.url = "github:snowfallorg/nix-software-center";
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
 };

  outputs = { self, nixpkgs, home-manager, chaotic, ... }:
   let
      lib= nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
    nixosConfigurations = {
      not-nixos = lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix # Your system configuration.
          chaotic.nixosModules.default # OUR DEFAULT MODULE
          ];
      };
    };
    homeConfigurations = {
      notkoto-73 = home-manager.lib.homeManagerConfiguration  {
        inherit pkgs;
        modules = [ ./home.nix ];
     };
   };
  };

}
