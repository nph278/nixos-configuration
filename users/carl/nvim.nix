{ unstablePkgs }:

{
  enable = true;
  package = unstablePkgs.neovim-unwrapped; # Use unstable nvim

  withNodeJs = false;
  withPython3 = false;
  withRuby = false;

  # Neovim plugins
  plugins = with unstablePkgs.vimPlugins; [
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

  extraConfig = ''
    luafile ${./init.lua}
  '';
}
