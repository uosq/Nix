{ config, lib, ... }: {
  options.mods.sys.video.enable = lib.mkEnableOption "video";

  config = lib.mkIf config.mods.sys.video.enable {
    hardware = {
      graphics.enable = true;
      graphics.enable32Bit = true;

      nvidia = {
        modesetting.enable = true;
        nvidiaSettings = true;
        open = false;

        powerManagement = {
          enable = false;
          finegrained = false;
        };

        videoAcceleration = true;

        package = config.boot.kernelPackages.nvidiaPackages.latest;
      };

    };

    services.xserver.videoDrivers = [ "nvidia" ];
  };
}