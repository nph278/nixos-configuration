{pkgs ? import <nixpkgs> {}}:

pkgs.mkShell {
  name = "dev";
  buildInputs = with pkgs; [
    # Rust
    rustc
    cargo
    clippy
    rustfmt
    rust-analyzer

    # Python
    pythonFull

    # Neovim
    (neovim.override {
      configure = {
        customRC = ''
          :luafile ~/Projects/init.lua
        '';

        packages.myVimPackage = with pkgs.vimPlugins; {

          # Vim plugins
          start = [
            nerdcommenter
            vim-tmux-navigator
            nvim-web-devicons
            vim-nix
            lualine-nvim
            nvim-tree-lua
            vim-gitgutter
            vim-toml
          ];
        }; 
      };     
    })
  ];
}
