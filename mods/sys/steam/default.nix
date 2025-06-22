{ config, lib, ... }: {
  options.mods.sys.steam.enable = lib.mkEnableOption "steam";

  config = lib.mkIf config.mods.sys.steam.enable {
    programs.steam = {
      enable = true;
      remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
      dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
      localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network G>
    };
  };
}