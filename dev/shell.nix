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
        packages.myVimPackage = with pkgs.vimPlugins; {
          # change this to the plugins you want
          start = [ nerdcommenter ];
        }; 
      };     
    })
  ];
}
