{ ... }: {

	programs.firefox = {
		enable = true;
		languagePacks = [ "pt-BR" ]; # a única que alguem precisa :))

		policies = {
			DisableTelemetry = true;
			DisableFirefoxStudies = true;
			DisablePocket = true;
			OfferToSaveLogins = false;
			TranslateEnabled = false;

			ExtensionSettings = {
				"uBlock0@raymondhill.net" = {
					install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
					installation_mode = "force_installed";
				};

				"addon@darkreader.org" = {
					install_url = "https://addons.mozilla.org/firefox/downloads/latest/darkreader/latest.xpi";
					installation_mode = "force_installed";
				};

				"{446900e4-71c2-419f-a6a7-df9c091e268b}" = { # bitwarden
					install_url = "https://addons.mozilla.org/firefox/downloads/latest/bitwarden-password-manager/latest.xpi";
					installation_mode = "force_installed";
				};
			};
		};

		profiles = {
			profile_0 = {
				id = 0;
				name = "profile_0";
				isDefault = true; # não precisa pq o id 0 é o padrão, mas só por garantia
				settings = {
					"browser.startup.homepage" = "https://nixos.org";

					"browser.newtabpage.pinned" = [
						{
							title = "Pesquisa do Nix";
							url = "https://search.nixos.org/packages";
						}

						{
							title = "Opções do Home Manager";
							url = "https://home-manager-options.extranix.com/";
						}

						{
							title = "Firefox Policies";
							url = "https://mozilla.github.io/policy-templates/";
						}
					];

					"browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
				};
			};
		};
	};

}
