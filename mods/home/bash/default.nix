{ config, lib, ... }: {

  options.mods.home.bash.enable = lib.mkEnableOption "bash";

  config = lib.mkIf config.mods.home.bash.enable {
    programs.bash.enableCompletion = true;
    programs.bash.enable = true;
    #programs.bash.enableLsColors = true; essa opção não existe?

    home.shellAliases = {
    yt = "/home/tevin/hd/Scripts/download";
    comprimir = "/home/tevin/hd/Scripts/comprimir_video";
    tirar-lixo = "nix-store --gc";
    atualizar-sistema = "nix flake update && sudo nixos-rebuild switch";
    };
  };

}