{}:

let
  pkgs = import (fetchTarball ("https://github.com/NixOS/nixpkgs/archive/nixpkgs-unstable.tar.gz")) { };
in
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
    python310

    # Nix
    rnix-lsp

    # Tools
    ripgrep

    # Neovim
    (neovim.override {
      configure = {
        customRC = ''
          :luafile ~/Projects/init.lua
        '';

        packages.myVimPackage = with pkgs.vimPlugins; {

          # Vim plugins
          start = [
            comment-nvim
            nvim-web-devicons
            nvim-tree-lua
            nvim-treesitter

            # LSP/CMP
            nvim-lspconfig
            lspkind-nvim
            luasnip
            cmp_luasnip
            nvim-cmp
            cmp-nvim-lsp
            cmp-buffer
            cmp-path
            cmp-cmdline
            cmp-nvim-lua
            friendly-snippets

            # Git
            vim-fugitive
            vim-gitgutter

            # Telescope
            telescope-nvim
            telescope-fzf-native-nvim
          ];
        };
      };
    })
  ];

  RUST_SRC_PATH = "${pkgs.rust.packages.stable.rustPlatform.rustLibSrc}";
}
