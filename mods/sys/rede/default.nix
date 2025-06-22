{ config, lib, ... }: {

  options.mods.sys.rede.enable = lib.mkEnableOption "rede";

  config = lib.mkIf config.mods.sys.rede.enable {
    hardware.bluetooth = {
      enable = true;
      powerOnBoot = true;
    };

    networking.hostName = "nixos";
    networking.networkmanager.enable = true;

    services.openssh = {
      enable = true;
      startWhenNeeded = true;
    };

    services.sunshine = {
      enable = true;
      autoStart = false;
      capSysAdmin = true;
      openFirewall = true;
    };

    services.zerotierone.enable = true;
  };

}