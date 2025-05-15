{
  description = "mf nixvim configuration";

  # Inputs
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  # Outputs
  outputs =
    {
      self,
      flake-parts,
      nixpkgs,
      nixvim,
      ...
    }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {

      # Target systems
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      # Per-system configuration
      perSystem =
        { system, ... }:
        let
          # Explicit binding of pkgs
          pkgs = nixpkgs.legacyPackages.${system};

          # Convenience handles
          nixvimLib = nixvim.lib.${system};
          nixvimPkgs = nixvim.legacyPackages.${system};

          # Nixvim module definition
          nixvimModule = {
            inherit pkgs; # make pkgs visible in all modules
            module = ./config; # root Nixvim module (can import sub-modules)
            # extraSpecialArgs = { };  # add more args here if needed
          };

          # Build the editor
          nvim = nixvimPkgs.makeNixvimWithModule nixvimModule;
        in
        {
          # `nix run .` → start Nixvim
          packages.default = nvim;

          # `nix flake check .`
          checks.default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
        };
    };
}
