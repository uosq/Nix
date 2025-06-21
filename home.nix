{ ... }:

{
  home.username = "tevin";
  home.homeDirectory = "/home/tevin";

  imports = [
    ./home-configs/programas/fastfetch.nix
    ./home-configs/programas/mpd.nix
    ./home-configs/programas/alacritty.nix
    ./home-configs/aliases.nix
    ./home-configs/programas/pacotes.nix
    ./home-configs/stylix.nix
    ./home-configs/programas/firefox.nix
  ];

  programs.bash.enable = true;

  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "25.05";
}
