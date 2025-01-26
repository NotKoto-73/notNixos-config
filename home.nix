{ config, lib, pkgs, nixpkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  home.username = "notkoto-73";
  home.homeDirectory = "/home/notkoto-73";

  # To update value, make sure to first check the Home Manager release notes
  home.stateVersion = "24.11"; # Please read the comment before changing.
  # Using Unstable Channel Currently

  home.packages = with pkgs; [
     # ----[Hi]
     hello
     #srb2
     the-powder-toy
     #superTux
     #superTuxKart
     #space-cadet-pinball
     #hikounomizu
     #crawl
     #infra-arcana
     #keeperrl
     #keeperrl-alpha34

     #daggerfall-unity
     #openmw
     #doomretro
     #quake3
     #quake3-pointrelease
     #tr-patcher
     #fallout-ce
     #fallout2-ce

     #pokete
     #sm64ex
     #smb3-foundry
     #supermariowar
     #mari0
     #outfly
     #solarus
     #solarus-quest-editor
     #pokemmo-installer

     # ----[Gits & Curls]
     git
     vim
     curl
     zsh
     wget

     #pokemon-cursor
     #pokefinder
     #pokemonsay
     #pokeget-rs
     krabby
     rpg-cli
     #tes3cmd
     # ----[Grubs & Usb's]
     grub2
     gparted
     efibootmgr
     ventoy-full
     popsicle
     woeusb-ng
     mediawriter
     usbimager
     usbutils
     impression
     # ----[Security]
     clamav
     clamtk
     polkit
     openssl
     os-prober
     # ----[Flatpal & Ish]
     flatpak
     sabnzbd
     pyprland
     # ----[Zippies & Misc.Tools]
     fastfetch
     unzip
     peazip
     testdisk-qt
     devtoolbox
     #calculator
     # ----[Bat-shit]
     bat
     lsd
     yarn
     fzf
     fzf-zsh
     fox

     # ----[Dev.Stuff]
     github-desktop
     python314
      #python313
      #python312Packages.pyliblo
      #python313Packages.cython
      #python313Packages.pyliblo
      #carla
      #python3Full
     python313Packages.pip
     pipx
     rustup
     cargo-ui
     nodejs
     # ----[Various dev packages]
     remmina
     sshfs
     texinfo
     libffi zlib
     nodePackages.ungit

     # ----[Lua PackManager Rocks]
     luajitPackages.luarocks-nix

     # ----[More Misc.Tools[Titus]
     toolbox
     toybox
      #coreutils
      #gcc
     libgff
     gnugrep
     ripgrep
     gnumake
     nfs-utils
     hugo
     ninja
     # ----[More[Titus]Sh!t]
     wpgtk
     swaycons
     sxhkd
      #synergy

     # ----[Text-Eds & Terms]
     neovim
     neovide
     kitty
     tabby
     alacritty
     wezterm
     # ----[Deja-Microsoft[Ed+Terms]
     vscode
     #vscodium
     powershell
     starship
     zoxide

     #warehouse
     #flatsweep
     #flatseal
     #extension-manager
     #xtensions
     # ----[Other-Extra[TermEds]
     st
     emacs
     helix
     ghostty
     yakuake
     #yakuakeDefault
     ptyxis
     # ----[KDExtras]
     kdePackages.kate  #[Powerful-TextEd]
     kdePackages.wayland-protocols
     kdePackages.waylib
     kdePackages.wayqt
     #kdePackages.partitionmanager
     kdePackages.isoimagewriter
     haskellPackages.shortcut  #[Kde-HotKeys]
     kdePackages.zanshin  #[To-Do / Task Man.]
     kdePackages.kdeconnect-kde  #[Social-Phone]
     kdePackages.calligra #[Doc. Reader]
     kdePackages.sweeper  #[Util-Cleaner]

     # ----[Browser-Wars]
     firefox-devedition
     #add-water
     floorp
     falcon
     brave
     librewolf
     ungoogled-chromium
     tor-browser
     qutebrowser
     sqlitebrowser
     #mullvad-browser
     #zen-browser

     archivebox
     # ----[Hud / UI]
     mangohud
     dmenu
     dunst
     htop
     btop
     redshift
     variety
     eww
     # ----[Utilities]
     baobab
     #squirreldisk
     stacer
     bleachbit
     vaults
     copyq
     #greenwithenvy
     junction
     cpu-x
     nvidia-system-monitor-qt

     # ----[Doc-Readers]
     libreoffice
     joplin
     zotero
     obsidian
     standardnotes
     emacsPackages.simplenote
     mate.atril
     openboard
     xournalpp
     adwaita-icon-theme
     shared-mime-info
     #glib
     newsflash
     foliate
     nautilus
     gnome-calendar
     seahorse
     gnome-maps
     protonmail-bridge
     texliveSmall
     numbat
     #element-desktop-wayland

     # ----[Font-ish Stuff]
     freetype
     fontconfig
     elinks
     starry
     # ----[NerdFonts]
     nerd-fonts.terminess-ttf
     nerd-fonts.fira-code
     cascadia-code
     # ----[File Explorers]
     superfile
     spacedrive
     doublecmd
     xfce.thunar
     mc
     # ----[Image / Screenshot]
     flameshot
     nomacs
     digikam
     feh
     # ----[Video-Players]
     mpv
     vlc
     haruna
     smplayer
     # ----[Audio-Players]
     audacious
     musicpod
     strawberry-qt6
     clementine
     amarok
     shortwave
     fooyin
     gapless
     lollypop
     pinit
     hw-probe
     concessio

     solanum
     #savedesktop
     eventstat
     stretchly
     goodvibes
     xmenu
     libre
     #give-me-lyric
     #gnomeExtensions.desktop-lyric
     frescobaldi
     fondo
     xwallpaper
     #vibrantlinux

     zap
     tuba
     logseq

     volctl
     volumeicon
     pwvucontrol
     #gpu-veiwer
     gpustat

     moreutils

     sysdig
     uefitool
     waycheck
     fondo
     gdm-settings
     #jdsimpleautostart
     appeditor

     klog #HAM Radio lol

     #simpleotask
     furmark
     menulibre
     fanctl
     colord
     ulauncher
     #ikona

     john
     # ----[Audio-Controls]
     transmission_4
     pavucontrol
     handbrake
     soundconverter
     kaffeine
     #hm
     cava
     cavalier
     # ----[Grapix-Design]
     gimp
     krita
     pinta
     inkscape
     openrgb
     # ----[Video-Edit]
     #obs-studio
     ffmpeg
     movit
     mediainfo
     libmediainfo
     audio-recorder
     cheese
     #ardour
     rosegarden
     tenacity
     kdenlive

     # ----[Social / Servs.]
     #thunderbird
     vesktop
     revolt-desktop
     kdePackages.tokodon
     # ----[User-Secure]
     bitwarden-desktop
     #authz0
     #signald
     # ----[Not Torrenting]
     qbittorrent
     kdePackages.kget
     deluge
     # ----[Not-Spotify]
     spotube
     spot
     pithos
     cider
     # ----[Not-Youtube]
     freetube
     ytmdesktop
     yewtube
     yt-dlp
     yt-dlg
     soulseekqt
     #materialious
     # ----[___arr's]
     radarr
     sonarr
     bazarr
     komikku

     # ----[DOS'GonIt]
     dosbox
     dosbox-staging

     # ----[RetroArch X Mednafen]
     retroarch
     retro-gtk
     retrofe
     retrospy
     mednafen
     mednafen-server
     mednaffe
     # ----[Retro-Emulate]
     #mame
     #yabause
     #higan
     #vbam
     mupen64plus
     #rmg-wayland
     #cemu
     #mgba
     #lime3ds
     #libretro.citra
     # ----[Newer(ish)-Emulators]
     #duckstation
     #pcsx2
     #rpcs3
     #dolphin-emu
     ryujinx
     #torzu

     # ----[Streamer-Vids]
     #plex
     jellyfin
     #delfin
     kodi
     hypnotix
     yutto
     stremio
     wiliwili
     tsukimi
     kazumi
     # ----[DAW's & Audio]
     bitwig-studio5-unwrapped
     #audacity
     reaper
     hydrogen
     mixxx
     helm
     lmms

     #gnomeExtensions.desktop-lyric
     #osdlyrics
     #sptlrx
     waylyrics
     swaglyrics
     # ----[Sheet-Music]
     musescore
     muse-sounds-manager
     lingot
      # ----[Calm/Relaxing]
     kstars
     stellarium
     blanket
     #breathing
     kdePackages.kalm
     mousam
     #nook-desktop
     #starrydex
     # ----[e-book]
     calibre
     hakuneko

     # ----[Containeretes / Dockers[-ish]
     kubernetes
     #k3x
     docker
     # ----[Virtualizations]
     qemu
     virtualbox
     virt-manager
     libverto
     # ----[A.I.]
     #openai-whisper-cpp
     #bavarder
     #chatgpt-cli
     #chatblade
     # ----[Clouds / FileShare]
     nextcloud-client
     syncthing
     syncthingtray
     localsend
     retroshare
     warp
     pods
     # ----[NET.Stuff]
     tor
      #i2p
     i2pd
     wireshark
     unbound
     crab-hole
     openvpn
     nextdns
     dnscrypt-proxy
     getdns
     # ----[Through -Wire.guard]
     wireguard-tools
     wireguard-ui
     wireproxy

     tailscale
     trayscale
     pipewire
     helvum
     # ----[UUPDump-4-ISO]
     aria2
     wimlib
     cabextract
      #chntpw
     cdrtools
     # ----[Extras]
     rofi          #[App Launcher]
     tldr          #[Cl-CheatSheet]
     collision     #[HashChecker]
     fsearch       #[SearchTool]
     rig           #[RandomId-Gen]

     # ----[Bottles of Wine]
     wine
     q4wine
     umu-launcher
     #wineWowPackages.wayland
     bottles
     playonlinux
     #flstudio -Bottles
     prismlauncher
     minecraft
     xivlauncher
     # ----[3D_\ Libre.Blender]
     #blender-hip
     libresprite
     openscad
     xflux
     # ----[Steaming Pile Of..]
     steam
     steam-run
     steam-rom-manager
     #adwsteamgtk
     protonup-qt
     # ----[Extra-Lutris]
     (lutris.override {
      extraPkgs = pkgs: [
        #List package dependencies here
        wineWowPackages.stable
        winetricks
       ];
     })
    ];

# Allow [unfree/unstable/broken] Enable:

 # 4 Minecraft-launcer Enable
  nixpkgs.config.allowBroken = true;

  nixpkgs.config.allowUnfree = true;
  #nixpkgs.config.allowUnfreePredicate = pkg:
    #builtins.elem (pkgs.lib.getName pkg) [
      #"steam"
      #steam-run"
      #"steam-original"
      #"steam-unwrapped"
      #"soulseekqt"
      #"plexmediaserver"
      #"reaper"
      #"soulseekqt"
      #"bitwig-studio-unwrapped"
      #"unrar"
      #"dotnet-sdk-6.0.428"
      #"obsidian"
      #"libvgm"
      #"muse-sounds-manager"
    #];

   nixpkgs.config.permittedInsecurePackages = [
     "dotnet-sdk-6.0.428"
     "aspnetcore-runtime-6.0.36"
     "electron-27.3.11"
     "python3.12-django-3.1.14"
     #"openss1-1.1.1v"
     #"python-2.7.18.7"
     #"qtwebkit-5.212.0-alpha4"
     #"openss1-1.1.1v"
    ];

  # Home Manager is pretty good at managing dotfiles.
  # The primary way to manage plain files is through 'home.file'.
  #home.file.".local/share/pixmaps/nixos-snowflake-stylix.svg".source =
    #config.lib.stylix.colors {
      #template = builtins.readFile ../../user/pkgs/nixos-snowflake-stylix.svg.mustache;
      #extension = "svg";
    #};

    #--------------------------------------------------------------------------------
    #     # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;
    #     # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
    #--------------------------------------------------------------------------------
  #};

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/notkoto-73/etc/profile.d/hm-session-vars.sh
  #
  #home.sessionVariables = {
    # EDITOR = "emacs";
  #};

  # Git Bash Enable
  #programs.git.enable = true;
  #programs.bash.enable = true;

  services.syncthing.enable = true;
  services.nextcloud-client = {
    enable = true;
    startInBackground = true;
  };

  #xdg.enable = true;
  #xdg.userDirs = {
    #enable = true;
    #createDirectories = true;
    #music = "${config.home.homeDirectory}/Media/Music";
    #videos = "${config.home.homeDirectory}/Media/Videos";
    #pictures = "${config.home.homeDirectory}/Media/Pictures";
    #templates = "${config.home.homeDirectory}/Templates";
    #download = "${config.home.homeDirectory}/Downloads";
    #documents = "${config.home.homeDirectory}/Documents";
    #desktop = null;
    #publicShare = null;
    #extraConfig = {
      #XDG_DOTFILES_DIR = "${config.home.homeDirectory}/.foxfiles";
      #XDG_ARCHIVE_DIR = "${config.home.homeDirectory}/Archive";
      #XDG_VM_DIR = "${config.home.homeDirectory}/Machines";
      #XDG_ORG_DIR = "${config.home.homeDirectory}/Org";
      #XDG_PODCAST_DIR = "${config.home.homeDirectory}/Media/Podcasts";
      #XDG_BOOK_DIR = "${config.home.homeDirectory}/Media/Books";
    #};
  #};
  #xdg.mime.enable = true;
  #xdg.mimeApps.enable = true;
  #xdg.mimeApps.associations.added = {
    # TODO fix mime associations, most of them are totally broken :(
    #"application/octet-stream" = "flstudio.desktop;";
  #};

  #news.display = "silent";

   gtk.iconTheme = {
    package = pkgs.papirus-icon-theme;
    name = if (config.stylix.polarity == "dark") then "Papirus-Dark" else "Papirus-Light";
  };

  #services.pasystray.enable = true;

  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    userName = "notkoto-73";
    userEmail = "KitsuneKoto73@proton.me";
      extraConfig = {
      init.defaultBranch = "main";
      #safe.directory = "/etc/nixos";
      safe.directory = "/home/notkoto-73/FoxDen/FoxGit";
     };
  };


}
