{ config, pkgs, lib, ... }: {

  options.mods.sys.kernel.enable = lib.mkEnableOption "kernel";

  config = lib.mkIf config.mods.sys.kernel.enable {
    boot.kernelPackages = pkgs.linuxKernel.packages.linux_xanmod_latest;
    boot.kernel.sysctl = {
      "vm.swappiness" = 30;
    };
  };

}