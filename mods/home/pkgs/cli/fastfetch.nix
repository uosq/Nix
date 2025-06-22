{ config, pkgs, lib, ... }: {
  options.mods.home.pkgs.pkgs.cli.fastfetch.enable = lib.mkEnableOption "fastfetch";

  config = lib.mkIf config.mods.home.pkgs.cli.fastfetch.enable {
    home.file.".config/fastfetch/config.jsonc".text = ''
    {
    "$schema": "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json",
    "modules": [
    	"title",
    	"separator",
    	"os",
    	"host",
    	"kernel",
    	"uptime",
    	"packages",
    	"shell",
    	"de",
    	"wm"
    	]
    }
    '';

    home.packages = [
      pkgs.fastfetch
    ];
  };
}