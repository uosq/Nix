# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ pkgs, ... }:
{
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./mods/sys

    # lix
    (
      let
        module = fetchTarball {
          name = "source";
          url = "https://git.lix.systems/lix-project/nixos-module/archive/2.93.0.tar.gz";
          sha256 = "sha256-11R4K3iAx4tLXjUs+hQ5K90JwDABD/XHhsM9nkeS5N8=";
        };
        lixSrc = fetchTarball {
          name = "source";
          url = "https://git.lix.systems/lix-project/lix/archive/2.93.0.tar.gz";
          sha256 = "sha256-hsFe4Tsqqg4l+FfQWphDtjC79WzNCZbEFhHI8j2KJzw=";
        };
      in
      import "${module}/module.nix" { lix = lixSrc; }
    )
  ];

  mods.sys = {
    audio.enable = true;
    entrada.enable = true;
    gpg.enable = true;
    kde.enable = true;
    kernel.enable = true;
    montarhd.enable = true;
    steam.enable = true;
    systemd-boot.enable = true;
    video.enable = true;

    rede.enable = true;
    rede.zerotier.enable = false;
    rede.ssh.enable = false;
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  environment.variables.EDITOR = "nano";

  environment.systemPackages = with pkgs; [
    git
    wget
    gpu-screen-recorder-gtk
  ];

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "pt_BR.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };

  programs.nano.nanorc = ''
  set tabsize 2
  '';

  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/nord.yaml";

  services.printing.enable = false;

  # não esquecer de usar "passwd" depois se precisar
  users.users.tevin = {
    isNormalUser = true;
    description = "tevin";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    packages = [ ];
  };

  # perfeitamente normal deixar 25.05
  system.stateVersion = "25.05";
}
