{
  config,
  pkgs,
  lib,
  ...
}:
{

  options.mods.home.pkgs.pacotes.enable = lib.mkEnableOption "pacotes";

  config = lib.mkIf config.mods.home.pkgs.pacotes.enable {
    home.packages = with pkgs; [
      fastfetch
      alacritty
      prismlauncher
      equibop
      mpv
      yt-dlp
      ffmpeg-full
      steamtinkerlaunch
      desktop-file-utils
      kde-rounded-corners
      git
      r2modman
      vscodium-fhs
      tor-browser-bundle-bin
      nixfmt-rfc-style
      nixd
      mangohud
      mangojuice
      papirus-nord
      libreoffice-qt-fresh
      wineWowPackages.stable
      winetricks
    ];
  };

}
