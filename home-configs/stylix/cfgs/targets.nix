{ ... }: {
  stylix = {
    targets.firefox.enable = true;
    targets.firefox.profileNames = [ "profile_0" ];

    targets.kde.enable = true;
    targets.alacritty.enable = true;

    targets.qt.enable = false;
  };
}