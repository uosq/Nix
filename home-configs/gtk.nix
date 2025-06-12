{ pkgs, ... }: {

	gtk = {
		theme = {
			package = pkgs.nordic;
			name = "Nordic";
		};

		iconTheme = {
			package = pkgs.papirus-nord;
			name = "Papirus-Nord";
		};
	};

}
