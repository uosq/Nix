{ ... }:

{
  home.username = "tevin";
  home.homeDirectory = "/home/tevin";

  imports = [
    ./mods/home
  ];

  mods.home = {
    pkgs = {

      cli = {
        fastfetch.enable = true;
        mpd.enable = true;
      };

      gui = {
        alacritty.enable = true;
        firefox.enable = true;
      };

      pacotes.enable = true;
    };

    stylix.enable = true;
    bash.enable = true;
  };

  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "25.05";
}
