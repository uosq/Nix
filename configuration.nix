# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ ... }:
{
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./configs/boot/systemd-boot.nix
    ./configs/hardware/kernel.nix
    ./configs/hardware/meuhd.nix
    ./configs/rede/network.nix
    ./configs/localizacao.nix
    ./configs/hardware/bluetooth.nix
    ./configs/jogos/steam.nix
    ./configs/hardware/video/nvidia.nix
    ./configs/ambientes-graficos/kde.nix
    ./configs/cups.nix
    ./configs/hardware/audio/pipewire.nix
    ./configs/hardware/controles/teclado.nix
    ./configs/usuarios.nix
    ./configs/nano.nix
    ./configs/gpg.nix
    ./configs/rede/ssh.nix
    ./configs/rede/sunshine.nix
    ./configs/rede/zerotier.nix
    ./configs/sudo.nix
    ./configs/pacotes.nix
    ./configs/stylix.nix
    ./configs/hardware/controles/xpadneo.nix
    ./configs/lix.nix
    ./configs/jogos/gamescope.nix
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
