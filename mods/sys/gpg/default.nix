{ config, lib, ... }: {
  options.mods.sys.gpg.enable = lib.mkEnableOption "gpg";

  config = lib.mkIf config.mods.sys.gpg.enable {
    programs.gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
  };
}