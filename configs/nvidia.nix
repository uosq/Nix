{ config, ... }:

{
  hardware = {
    graphics.enable = true;

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
}
