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
            lualine-nvim
            nvim-tree-lua
            vim-gitgutter
            nvim-lspconfig
            luasnip
            cmp_luasnip
            nvim-cmp
            cmp-nvim-lsp
            cmp-buffer
            cmp-path
            cmp-cmdline
            nvim-treesitter
          ];
        }; 
      };     
    })
  ];
  
  RUST_SRC_PATH = "${pkgs.rust.packages.stable.rustPlatform.rustLibSrc}";
}
