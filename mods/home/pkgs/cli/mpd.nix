{ config, lib, ... }: {
  options.mods.home.pkgs.cli.mpd.enable = lib.mkEnableOption "mpd";

  config = lib.mkIf config.mods.home.pkgs.cli.mpd.enable {
    services.mpd = {
      enable = true;
      musicDirectory = "/home/tevin/hd/Musica";
      extraConfig = ''
audio_output {
  type "pipewire"
  name "pipewire output"
}
'';
    };

    services.mpd-mpris.enable = true;
    programs.ncmpcpp.enable = true;
  };
}