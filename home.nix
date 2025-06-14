{ ... }:

{
  home.username = "tevin";
  home.homeDirectory = "/home/tevin";

  imports = [
    ./home-configs/fastfetch.nix
    ./home-configs/mpd.nix
    ./home-configs/alacritty.nix
    ./home-configs/aliases.nix
    ./home-configs/pacotes.nix
    ./home-configs/stylix.nix
    #		./home-configs/gtk.nix
    ./home-configs/firefox.nix
  ];

  programs.bash.enable = true;

  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "25.05";
}
