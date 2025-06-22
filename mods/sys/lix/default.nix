{ config, lib, ... }: {
  options.mods.sys.lix.enable = lib.mkEnableOption "lix";

  config = lib.mkIf config.mods.sys.lix.enable {
    imports = [
      (
        let
          module = fetchTarball {
            name = "source";
            url = "https://git.lix.systems/lix-project/nixos-module/archive/2.93.0.tar.gz";
            sha256 = "sha256-11R4K3iAx4tLXjUs+hQ5K90JwDABD/XHhsM9nkeS5N8=";
          };
          lixSrc = fetchTarball {
            name = "source";
            url = "https://git.lix.systems/lix-project/lix/archive/2.93.0.tar.gz";
            sha256 = "sha256-hsFe4Tsqqg4l+FfQWphDtjC79WzNCZbEFhHI8j2KJzw=";
          };

        in
        import "${module}/module.nix" { lix = lixSrc; }
      )
    ];
  };
}