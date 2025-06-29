{ config, lib, ... }: {

  options.mods.sys.montarhd.enable = lib.mkEnableOption "montarhd";

  config = lib.mkIf config.mods.sys.montarhd.enable {
    fileSystems."/home/tevin/hd" = {
      device = "/dev/disk/by-uuid/8a3f4f71-8a10-4611-8746-56f6616468d6";
      fsType = "xfs";
      options = [
        "defaults"
        "noatime"
      ];
    };
  };
}