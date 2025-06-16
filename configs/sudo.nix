{ pkgs, ... }:
{
  config.environment.systemPackages = [
    pkgs.sudo.override
    { withInsults = true; }
  ];
}
