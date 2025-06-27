{
  config,
  lib,
  pkgs,
  ...
}:
{
  options.mods.home.stylix.enable = lib.mkEnableOption "stylix";

  config = lib.mkIf config.mods.home.stylix.enable {
    stylix = {
      enable = true;
      autoEnable = true;
      polarity = "dark";
      base16Scheme = "${pkgs.base16-schemes}/share/themes/nord.yaml";

      fonts = {
        serif = {
          package = pkgs.nerd-fonts.terminess-ttf;
          name = "Terminess Nerd Font";
        };

        sansSerif = {
          package = pkgs.nerd-fonts.terminess-ttf;
          name = "Terminess Nerd Font";
        };

        monospace = {
          package = pkgs.nerd-fonts.terminess-ttf;
          name = "Terminess Nerd Font";
        };

        emoji = {
          package = pkgs.noto-fonts-emoji;
          name = "Noto Color Emoji";
        };

        sizes = {
          applications = 14;
          desktop = 14;
          popups = 14;
          terminal = 14;
        };
      };

      image = pkgs.fetchurl {
        url = "https://github.com/NixOS/nixos-artwork/blob/master/wallpapers/nixos-wallpaper-catppuccin-frappe.png?raw=true";
        hash = "sha256-wtBffKK9rqSJo8+7Wo8OMruRlg091vdroyUZj5mDPfI=";
      };

      targets.firefox.enable = true;
      targets.firefox.profileNames = [ "profile_0" ];

      targets.kde.enable = true;
      targets.alacritty.enable = true;

      targets.qt.enable = false;
    };
  };
}
