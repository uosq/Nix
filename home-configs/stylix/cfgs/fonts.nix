{pkgs,...}: {
  stylix = {
    fonts = {
        serif = {
        package = pkgs.nerd-fonts.terminess-ttf;
        name = "Terminus";
      };

      sansSerif = {
        package = pkgs.nerd-fonts.terminess-ttf;
        name = "Terminus";
      };

      monospace = {
        package = pkgs.nerd-fonts.terminess-ttf;
        name = "Terminus";
      };

      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };

      sizes = {
        applications = 10;
        desktop = 10;
        popups = 10;
        terminal = 10;
      };
    };
  };
}