{
  pkgs,
  ...
}:
{
  stylix = {
    enable = true;
    autoEnable = true;
    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/nord.yaml";

    fonts = {
      serif = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font";
      };

      sansSerif = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font";
      };

      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font";
      };

      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };

      sizes = {
        applications = 10;
        desktop = 10;
        popups = 10;
        terminal = 10;
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
}
