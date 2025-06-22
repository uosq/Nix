{ config, lib, ... }:
let 
  cfg = config.mods.sys.rede;
in  {

  options = {
    cfg.enable = lib.mkEnableOption "rede";
    cfg.zerotier.enable = lib.mkEnableOption "zerotier";
    cfg.ssh.enable = lib.mkEnableOption "ssh";
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