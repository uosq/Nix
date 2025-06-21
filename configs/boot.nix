{ ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.extraModprobeConfig = ''
    		options nvidia NVreg_PreserveVideoMemoryAllocations=1
    	'';
}
