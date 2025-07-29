{
  imports = [
    ./kde # auto explicativo
    
    ./systemd-boot # boot
    
    ./entrada # teclado e xpadneo
    ./video # nvidia
    ./audio # piipewire

    ./rede # ssh, nm, bluetooth, etc

    ./kernel # kernel xanmod

    ./montarhd # montar meu hd interno

    ./steam

    ./gpg
  ];

  services.lsfg-vk = {
    enable = true;
    ui.enable = true; # installs gui for configuring lsfg-vk
  };
}