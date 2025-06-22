{ config, lib, ... }: {
  options.mods.sys.audio.enable = lib.mkEnableOption "audio";

  config = lib.mkIf config.mods.sys.audio.enable {
    services.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
  };
}