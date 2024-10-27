# example shell.nix file, copy to dir, select relevant packages and run nix-shell

let
  pkgs = import <nixpkgs> { config = { allowUnfree = true; }; overlays = []; };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    # select packages availible in the shell here
    fastfetch
    
    (python3.withPackages (python-pkgs: with python-pkgs; [
      # select packages availible in Python here
      pandas
      requests
    ]))
  ];

  # commands to run when nix-shell is started
  shellHook =
    ''
      echo "nix-shell started!"
    '';
}
