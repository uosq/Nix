{ config, lib, ... }: {
  options.mods.sys.entrada.enable = lib.mkEnableOption "entrada";

  config = lib.mkIf config.mods.sys.entrada.enable {
    # Configure keymap in X11
    services.xserver.xkb = {
      layout = "br";
      variant = "";
    };

    # Configure console keymap
    console.keyMap = "br-abnt2";

    hardware.xpadneo.enable = true;
  };
}