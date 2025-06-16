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
    libreoffice-qt-fresh
    kde-rounded-corners
    git
    linuxKernel.packages.linux_xanmod_latest.xpadneo
    r2modman
    vscodium-fhs
    tor-browser-bundle-bin
    gpu-screen-recorder-gtk
    nixfmt-rfc-style
    nixd
  ];

}
