racket-pkgs:
	raco pkg install racket-langserver algorithms yaml

system:
	nixos-rebuild switch --flake .
