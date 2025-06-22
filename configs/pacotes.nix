{ config, pkgs, ... }:
{
  config.environment.systemPackages = with pkgs; [
    git
    wget
    gpu-screen-recorder-gtk
  ];
}
