# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, lib, pkgs, nixpkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
#----------------------------------------------------------------
  # Bootloader.
  #boot.loader.grub.enable = true;
  #boot.loader.grub.device = "nodev";
  #boot.loader.grub.useOSProber = true;
  #boot.loader.systemd-boot.enable = true;
  #boot.loader.efi.canTouchEfiVariables = true;
#-------------------------------------------------
  networking.hostName = "not-nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/Thule";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_GB.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "kl_GL.UTF-8";
    LC_IDENTIFICATION = "kl_GL.UTF-8";
    LC_MEASUREMENT = "kl_GL.UTF-8";
    LC_MONETARY = "kl_GL.UTF-8";
    LC_NAME = "kl_GL.UTF-8";
    LC_NUMERIC = "kl_GL.UTF-8";
    LC_PAPER = "kl_GL.UTF-8";
    LC_TELEPHONE = "kl_GL.UTF-8";
    LC_TIME = "kl_GL.UTF-8";
  };

  # Enable the X11 windowing system.
  # You can disable this if you're only using the Wayland session.
  services.xserver.enable = true;

  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm.wayland.enable = true;
  services.desktopManager.plasma6.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.notkoto-73 = {
    isNormalUser = true;
    description = "Mikota Esper";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    #  kdePackages.kate
    #  thunderbird
    ];
  };



  # Flatpak Enable:
  services.flatpak.enable = true;
  systemd.services.flatpak-repo = {
    wantedBy = [ "multi-user.target" ];
    path = [ pkgs.flatpak ];
    script = ''
      flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    '';
  };
  # Nginx Dev Enable
  services.nginx.enable = true;

  # Experimental Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Disable if you don't want unfree packages
  nixpkgs.config.allowUnfree = true;

  # 4 Minecraft-launcer Enable
  nixpkgs.config.allowBroken = true;

  # Auto-Clean NixStore
  nix.settings.auto-optimise-store = true;
#------------------------------------------------
      #allowUnfreePredicate = pkg: builtins.elem (builtins.parseDrvName pkg.name).name ["steam"];
    #};
  #};
   # PROGRAMS.APPLICATIO.ENABLE:
   #programs.firefox.enable = true;
   # Enable Steam
   programs.steam.enable = true;
     #remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
     #dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
     #localNetworkGameTransfers.openFirewall = true; # Open ports for Steam Local Network Game Transfers

   # Hyperland Enable
   programs.hyprland.enable = true;
#------------------------------------------------
 # System packages
   environment.systemPackages = with pkgs; [

  # DESKTOP_MODIFS:
    #inputs.nixos-conf-editor.packages.${system}.nixos-conf-editor
    #inputs.nix-software-center.packages.${system}.nix-software-center

  #chaotic.mesa-git
    lan-mouse_git

  # REST_OF_YOUR_PACKAGES:
    vim
    wget
    zsh
    git
    #logseq
    #cryptsetup
    #home-manager

  ];

   chaotic.mesa-git.enable = true;
#------------------------------------------------
      #] ++ (if (config.services.xserver.windowManager.xmonad.enable == true)
      #     then[ pkgs.rofi ]
      #   else
      #     (if (config.programs.hyprland.enable == true)
      #      then [ pkgs.fuzzel ] else []));
    # [TEMPLATE: IF - THEN - ELSE]
  # Some programs need SUID wrappers, configured further or started in user sessions
  #  programs.mtr.enable = true;
  #  programs.gnupg.agent = {
  #    enable = true;
  #    enableSSHSupport = true;
  #  };

  # Enable the OpenSSH daemon.
  #  services.openssh.enable = true;

  # Open ports in the firewall.
  #  networking.firewall.allowedTCPPorts = [ ... ];
  #  networking.firewall.allowedUDPPorts = [ ... ];
  # Disable the firewall altogether.
  #  networking.firewall.enable = false;

  # SystemPolkit [PolicyKit?] IDK = Later
  #security.polkit.enable = true;

#------------------------------------------------
  # I use zsh btw
  environment.shells = with pkgs; [ zsh ];
  users.defaultUserShell = pkgs.zsh;
  programs.zsh.enable = true;

  # KDE Partition Manager
  programs.partition-manager.enable = true;

  # Fonts Enable
  fonts.fontDir.enable = true;

  # Virtualisation Manage
  virtualisation.libvirtd.enable = true;

  # Xdg-Portal Enable
  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal
      pkgs.xdg-desktop-portal-gtk
    ];
  };

#------------------------------------------------
  # NixOS Release Version
  system.stateVersion = "24.11"; #Value at release version of first install
  # It is ok to leave this unchanged for compatibility purposes
  # Before changing value read documentation (https://nixos.org/nixos/options.html).

}
