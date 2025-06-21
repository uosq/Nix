{ config, pkgs, ... }:
{
  config.environment.systemPackages = with pkgs; [
    git
    vim
    wget
    gpu-screen-recorder-gtk
    linuxKernel.packages.linux_xanmod_latest.xpadneo
  ];
}
