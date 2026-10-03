{
  description = "I have no idea what i am doing so i must go on";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    wrappers.url = "github:BirdeeHub/nix-wrapper-modules";
    wrappers.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, ... } @ inputs : let
    supportedSystems = [ "x86_64-linux" "aarch64-linux" ];

    forAllSystem = f: nixpkgs.lib.genAttrs supportedSystems ( system: f ( import nixpkgs { inherit system; } ) );
	in {
    packages = forAllSystem (
      pkgs : let
        pkgList = with pkgs; [
				  # LSP
					nixd
					lua-language-server
					
					# Other
				  lua5_1
					tree-sitter
					ripgrep
					fd
					cargo
					luarocks
					fzf
					gcc
				];
      in {
        default = inputs.wrappers.wrappers.neovim.wrap {
				  inherit pkgs;
				  env = {
				    "CONFIG_ROOT" = ./.;
				  };
				  runtimePkgs = pkgList;
				  settings.config_directory = ./.;
				};
      }
    );
  };
}
