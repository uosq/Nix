# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ ... }:
{
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./configs/boot.nix
    ./configs/kernel.nix
    ./configs/meuhd.nix
    ./configs/network.nix
    ./configs/localizacao.nix
    ./configs/bluetooth.nix
    ./configs/steam.nix
    ./configs/nvidia.nix
    ./configs/kde.nix
    ./configs/cups.nix
    ./configs/pipewire.nix
    ./configs/teclado.nix
    ./configs/usuarios.nix
    ./configs/nano.nix
    ./configs/gpg.nix
    ./configs/ssh.nix
    ./configs/sunshine.nix
    ./configs/zerotier.nix
    ./configs/sudo.nix
    ./configs/pacotes.nix
    ./configs/stylix.nix
    ./configs/xpadneo.nix
    ./configs/lix.nix
  ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  environment.variables.EDITOR = "nano";

  # perfeitamente normal deixar 25.05
  system.stateVersion = "25.05";
}
