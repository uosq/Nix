{
  imports = [
    # cli
    ./cli/fastfetch.nix
    ./cli/mpd.nix
    
    # gui
    ./gui/alacritty.nix
    ./gui/firefox.nix

    # os pacotes
    ./pacotes.nix
  ];
}