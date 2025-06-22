{ config, lib, ... }: {
  options.mods.sys.systemd-boot.enable = lib.mkEnableOption "systemd-boot";

  config = lib.mkIf config.mods.sys.systemd-boot.enable {
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;
    boot.extraModprobeConfig = ''
          options nvidia NVreg_PreserveVideoMemoryAllocations=1
        '';
  };
}