{}:

let
  pkgs = import (fetchTarball ("https://github.com/NixOS/nixpkgs/archive/nixpkgs-unstable.tar.gz")) { };
in
pkgs.mkShell rec {
  name = "dev";
  buildInputs = with pkgs; [
    # Neovim
    (neovim.override {
      configure = {
        customRC = ''
          :luafile ${./nvim/init.lua}
        '';

        packages.myVimPackage = with pkgs.vimPlugins; {

          # Vim plugins
          start = [
            nvim-web-devicons
            lightspeed-nvim
            # nvim-tree-lua

            # Treesitter
            nvim-treesitter
            # nvim-treesitter-textobjects
            # playground

            # LSP
            nvim-lspconfig
            lspkind-nvim
            comment-nvim

            # Cmp
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
            # vim-fugitive
            vim-gitgutter

            # Telescope
            telescope-nvim
            telescope-fzf-native-nvim
            telescope-ui-select-nvim
          ];
        };
      };
    })
  ];

  # LD_LIBRARY_PATH = "${pkgs.lib.makeLibraryPath buildInputs}";
}
