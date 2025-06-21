{ ... }:

{
  home.username = "tevin";
  home.homeDirectory = "/home/tevin";

  imports = [
    ./home-configs
  ];

  programs.bash.enable = true;

  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "25.05";
}
