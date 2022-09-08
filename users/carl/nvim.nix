{ unstablePkgs, ... }:

{
  programs.neovim = {
    enable = true;
    package = unstablePkgs.neovim-unwrapped; # Use unstable nvim (I am mentally unstable)

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
      luafile ${./lua/options.lua}
      luafile ${./lua/hl.lua}
      luafile ${./lua/gitgutter.lua}
      luafile ${./lua/lsp.lua}
      luafile ${./lua/cmp.lua}
      luafile ${./lua/status.lua}
      luafile ${./lua/lightspeed.lua}
      luafile ${./lua/treesitter.lua}
      luafile ${./lua/comment.lua}
      luafile ${./lua/keybinds.lua}
      luafile ${./lua/filetype.lua}
      " luafile ${./lua/filetree.lua}
      " luafile ${./lua/telescope.lua}
    '';
  };
}
