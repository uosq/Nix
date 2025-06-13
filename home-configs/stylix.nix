{ pkgs, ... }:
{

  stylix = {
    enable = true;

    autoEnable = true;

    image = pkgs.fetchurl {
      url = "https://github.com/NixOS/nixos-artwork/blob/master/wallpapers/nixos-wallpaper-catppuccin-frappe.png?raw=true";
      hash = "sha256-wtBffKK9rqSJo8+7Wo8OMruRlg091vdroyUZj5mDPfI=";
    };

    polarity = "dark";

    base16Scheme = "${pkgs.base16-schemes}/share/themes/nord.yaml";

    targets.firefox.enable = true;
    targets.firefox.profileNames = [ "profile_0" ];

    targets.kde.enable = true;
    targets.alacritty.enable = true;

    targets.qt.enable = false;

    fonts.sizes = {
      applications = 10;
      desktop = 10;
      popups = 10;
      terminal = 10;
    };
  };

}
