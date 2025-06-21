{ pkgs, ... }:
{

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
  ];

}
