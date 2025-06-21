{ pkgs, ... }:

{
  boot.kernelPackages = pkgs.linuxKernel.packages.linux_xanmod_latest;
  boot.kernel.sysctl = {
    "vm.swappiness" = 30;
  };
}
