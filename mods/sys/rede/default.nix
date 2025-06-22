{ config, lib, ... }:
let 
  cfg = config.mods.sys.rede;
in  {

  options = {
    mods.sys.rede.enable = lib.mkEnableOption "rede";
    mods.sys.rede.zerotier.enable = lib.mkEnableOption "zerotier";
    mods.sys.rede.ssh.enable = lib.mkEnableOption "ssh";
  };

  config = lib.mkIf cfg.enable {
    hardware.bluetooth = {
      enable = true;
      powerOnBoot = true;
    };

    networking.hostName = "nixos";
    networking.networkmanager.enable = true;

    services.openssh = {
      enable = lib.mkDefault cfg.ssh.enable;
      startWhenNeeded = true;
    };

    services.sunshine = {
      enable = true;
      autoStart = false;
      capSysAdmin = true;
      openFirewall = true;
    };

    services.zerotierone.enable = lib.mkDefault cfg.zerotier.enable;
  };

}