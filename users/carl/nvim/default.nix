{ unstablePkgs, ... }:

{
  programs.neovim = {
    enable = true;
    package = unstablePkgs.neovim-unwrapped;

    # No programming allowed
    withNodeJs = false;
    withPython3 = false;
    withRuby = false;

    # Neovim plugins
    plugins = with unstablePkgs.vimPlugins; [
      nvim-web-devicons
      lightspeed-nvim
      # nvim-tree-lua

      # Treesitter
      (nvim-treesitter.withPlugins (plugins: with plugins; [
        tree-sitter-rust
        tree-sitter-lua
        tree-sitter-toml
        tree-sitter-python
        tree-sitter-nix
        tree-sitter-markdown
        tree-sitter-bash
        tree-sitter-css
        tree-sitter-c
        tree-sitter-cpp
        tree-sitter-html
        tree-sitter-json
        tree-sitter-vim
        tree-sitter-javascript
      ]))
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

    # Run all the luas (luai)
    extraConfig = ''
      luafile ${./options.lua}
      luafile ${./highlight.lua}
      luafile ${./gitgutter.lua}
      luafile ${./lsp.lua}
      luafile ${./cmp.lua}
      luafile ${./status.lua}
      luafile ${./lightspeed.lua}
      luafile ${./treesitter.lua}
      luafile ${./comment.lua}
      luafile ${./keybinds.lua}
      luafile ${./filetype.lua}
      luafile ${./telescope.lua}
      " luafile ${./filetree.lua}
    '';
  };
}
