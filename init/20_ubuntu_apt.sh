# Ubuntu-only stuff. Abort if not Ubuntu.
is_ubuntu || return 1

apt_keys=()
apt_source_files=()
apt_source_texts=()
apt_packages=()
deb_installed=()
deb_sources=()

installers_path="$DOTFILES/caches/installers"

# Ubuntu distro release name, eg. "xenial"
release_name=$(lsb_release -c | awk '{print $2}')

function add_ppa() {
  apt_source_texts+=($1)
  IFS=':/' eval 'local parts=($1)'
  apt_source_files+=("${parts[1]}-ubuntu-${parts[2]}-$release_name")
}

#############################
# WHAT DO WE NEED TO INSTALL?
#############################

# Misc.
apt_packages+=(
  curl
  php
  php-pear 
  php-fpm 
  php-dev 
  php-zip 
  php-curl 
  php-xmlrpc 
  php-gd 
  php-mysql 
  php-mbstring 
  php-xml 
  libapache2-mod-php
  php-bcmath
  php-ctype
  php-json
  php-mbstring
  php-pdo
  php-tokenizer
  apache2
  git-core
  htop
  jq
  nmap
  postgresql
  mysql-server
  python-pip
  silversearcher-ag
  tree
  nnn
  ranger
  zsh
  tmux
  tmuxinator
  fonts-powerline
  gulp
  sass
  firefox 
  language-pack-de-base
)

apt_packages+=(vim)
is_ubuntu_desktop && apt_packages+=(vim-gnome)

# https://github.com/neovim/neovim/wiki/Installing-Neovim
add_ppa ppa:neovim-ppa/stable
apt_packages+=(neovim)

# https://github.com/greymd/tmux-xpanes
add_ppa ppa:greymd/tmux-xpanes
apt_packages+=(tmux-xpanes)

if is_ubuntu_desktop; then
  # http://www.omgubuntu.co.uk/2016/06/install-latest-arc-gtk-theme-ubuntu-16-04
  # apt_keys+=(http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key)
  # apt_source_files+=(arc-theme)
  # apt_source_texts+=("deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /")
  # apt_packages+=(arc-theme)

  # https://itsfoss.com/install-numix-ubuntu/
  add_ppa ppa:numix/ppa
  apt_packages+=(numix-gtk-theme numix-icon-theme-circle numix-icon-theme-square)
  
  # https://itsfoss.com/pop-icon-gtk-theme-ubuntu/
  add_ppa ppa:system76/pop
  apt_packages+=(pop-theme)
  apt_packages+=(pop-icon-theme)
  
  # https://www.omgubuntu.co.uk/2016/10/install-adapta-gtk-theme-on-ubuntu
  add_ppa ppa:tista/adapta
  apt_packages+=(adapta-gtk-theme)

  # https://www.omgubuntu.co.uk/2019/06/install-qogir-theme-ubuntu
  if [[ ! -d "$installers_path/Qogir-theme" ]]; then
    git clone https://github.com/vinceliuice/Qogir-theme.git $installers_path/Qogir-theme
    cd $installers_path/Qogir-theme
    ./install.sh
    # cd ..
    # rm -rf Qogir-theme
  fi

  # https://github.com/vinceliuice/vimix-gtk-themes
  if [[ ! -d "$installers_path/Vimix-themes" ]]; then
    git clone https://github.com/vinceliuice/vimix-gtk-themes.git $installers_path/Vimix-themes
    cd $installers_path/Vimix-themes
    ./Install
    # cd ..
    # rm -rf Vimix-themes
  fi

  # https://github.com/vinceliuice/vimix-icon-theme
  if [[ ! -d "$installers_path/vimix-icon-themes" ]]; then
    cd $installers_path
    git clone https://github.com/vinceliuice/vimix-icon-theme.git $installers_path/vimix-icon-themes
    cd $installers_path/vimix-icon-themes
    ./install.sh
    # cd ..
    # rm -rf vimix-icon-themes
  fi

  # https://www.ubuntuupdates.org/ppa/google_chrome
  apt_keys+=(https://dl-ssl.google.com/linux/linux_signing_key.pub)
  apt_source_files+=(google-chrome)
  apt_source_texts+=("deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main")
  apt_packages+=(google-chrome-stable)

  # https://www.spotify.com/us/download/linux/
  # apt_keys+=('--keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886')
  # apt_source_files+=(spotify)
  # apt_source_texts+=("deb http://repository.spotify.com stable non-free")
  # apt_packages+=(spotify-client)

  # https://tecadmin.net/install-oracle-virtualbox-on-ubuntu/
  apt_keys+=(https://www.virtualbox.org/download/oracle_vbox_2016.asc)
  apt_source_files+=(virtualbox)
  apt_source_texts+=("deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib")
  apt_packages+=(virtualbox-6.0)

  # Misc
  apt_packages+=(
    chromium-browser
    fonts-mplus
    gnome-tweak-tool
    gnome-tweaks
    chrome-gnome-shell
    rofi
    network-manager-openconnect
    network-manager-openconnect-gnome
    openssh-server
    unity-tweak-tool
    xclip
    zenmap
    keepassxc
    tilix
  )

  # Manage online accounts via "gnome-control-center" in launcher
  apt_packages+=(gnome-control-center gnome-online-accounts)

  # https://github.com/mitchellh/vagrant/issues/7411
  deb_installed+=(/usr/bin/vagrant)
  deb_sources+=(https://releases.hashicorp.com/vagrant/2.2.6/vagrant_2.2.6_x86_64.deb)
  # https://github.com/vagrant-libvirt/vagrant-libvirt/issues/575
  apt_packages+=(vagrant)
  function postinstall_vagrant() {
    sudo sed -i'' "s/Specification.all = nil/Specification.reset/" /usr/lib/ruby/vendor_ruby/vagrant/bundler.rb
  }

  # https://launchpad.net/grub-customizer
  add_ppa ppa:danielrichter2007/grub-customizer
  apt_packages+=(grub-customizer)

  # https://kifarunix.com/how-to-install-and-use-veracrypt-to-encrypt-drives-on-ubuntu-18-04/
  add_ppa ppa:unit193/encryption
  apt_packages+=(veracrypt)

  # https://www.dropbox.com/install-linux
  # apt_packages+=(python-gtk2 libpango-1.0-0)
  # deb_installed+=(/usr/bin/dropbox)
  # deb_sources+=("https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2019.02.14_amd64.deb")

  # http://askubuntu.com/a/852727
  apt_packages+=(cabextract)
  deb_installed+=(/usr/share/fonts/truetype/msttcorefonts)
  deb_sources+=(deb_source_msttcorefonts)
  function deb_source_msttcorefonts() {
    echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections
    echo http://ftp.debian.org/debian/pool/contrib/m/msttcorefonts/ttf-mscorefonts-installer_3.6_all.deb
  }

  ################
  # various apps #
  ################
  
  # Install libre office
  if [[ ! -d "$HOME/snap/libreoffice" ]]; then
    e_header "Installing Libre Office"
    sudo snap install libreoffice
  fi
  
  # Install slack
  if [[ ! -d "/usr/bin/slack" ]]; then
    e_header "Installing Slack"
    sudo snap install slack --classic
  fi
  
  # Install Spotify
  if [[ ! -d "$HOME/snap/spotify" ]]; then
    e_header "Installing Spotify"
    sudo snap install spotify
  fi

  # Install Dropbox
  # Führen Sie den Dropbox-Daemon danach von dem neuen .dropbox-dist -Ordner aus aus.
  # ~/.dropbox-dist/dropboxd
  if [[ ! -d "$HOME/.dropbox-dist" ]]; then
    e_header "Installing Dropbox"
    cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
  fi
  
  # Jetbrains Toolbox
  # cd into the toolbox dir and start toolbox with ./jetbrains-toolbox
  if [[ ! -d "/opt/jetbrains/toolbox" ]]; then
    e_header "Installing Jetbrains Toolbox"
    sudo mkdir -p /opt/jetbrains/toolbox &&
    cd /opt/jetbrains/toolbox &&
    wget -O - "https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.16.6067.tar.gz" | sudo tar xzf - 
  fi
  
  # Franz Messanger
  # cd into the dir and start Franz with ./Franz
  if [[ ! -d "/opt/franz" ]]; then
    e_header "Installing Franz Messanger"
    sudo mkdir -p /opt/franz &&
    cd /opt/franz &&
    wget -O - "https://github.com/meetfranz/franz/releases/download/v5.4.0/franz_5.4.0_amd64.deb" | sudo tar xzf - 
  fi
fi

function other_stuff() {
  # Install Git Extras
  if [[ ! "$(type -P git-extras)" ]]; then
    e_header "Installing Git Extras"
    (
      cd $DOTFILES/vendor/git-extras &&
      sudo make install
    )
  fi
  
  # Install Dash-To-Panel
  e_header "Installing Dash-to-Panel"
  git clone https://github.com/home-sweet-gnome/dash-to-panel.git $DOTFILES/caches/installers/panel
  cd $DOTFILES/caches/installers/panel && make install
  cd ..
  rm -rf panel
  gnome-shell-extension-tool -e dash-to-panel
}

####################
# ACTUALLY DO THINGS
####################

# Add APT keys.
keys_cache=$DOTFILES/caches/init/apt_keys
IFS=$'\n' GLOBIGNORE='*' command eval 'setdiff_cur=($(<$keys_cache))'
setdiff_new=("${apt_keys[@]}"); setdiff; apt_keys=("${setdiff_out[@]}")
unset setdiff_new setdiff_cur setdiff_out

if (( ${#apt_keys[@]} > 0 )); then
  e_header "Adding APT keys (${#apt_keys[@]})"
  for key in "${apt_keys[@]}"; do
    e_arrow "$key"
    if [[ "$key" =~ -- ]]; then
      sudo apt-key adv $key
    else
      wget -qO- $key | sudo apt-key add -
    fi && \
    echo "$key" >> $keys_cache
  done
fi

# Add APT sources.
function __temp() { [[ ! -e /etc/apt/sources.list.d/$1.list ]]; }
source_i=($(array_filter_i apt_source_files __temp))

if (( ${#source_i[@]} > 0 )); then
  e_header "Adding APT sources (${#source_i[@]})"
  for i in "${source_i[@]}"; do
    source_file=${apt_source_files[i]}
    source_text=${apt_source_texts[i]}
    if [[ "$source_text" =~ ppa: ]]; then
      e_arrow "$source_text"
      sudo add-apt-repository -y $source_text
    else
      e_arrow "$source_file"
      sudo sh -c "echo '$source_text' > /etc/apt/sources.list.d/$source_file.list"
    fi
  done
fi

# Update APT.
e_header "Updating APT"
sudo apt-get -qq update

# Only do a dist-upgrade on initial install, otherwise do an upgrade.
e_header "Upgrading APT"
if is_dotfiles_bin; then
  sudo apt-get -qy upgrade
else
  sudo apt-get -qy dist-upgrade
fi

# Install APT packages.
installed_apt_packages="$(dpkg --get-selections | grep -v deinstall | awk 'BEGIN{FS="[\t:]"}{print $1}' | uniq)"
apt_packages=($(setdiff "${apt_packages[*]}" "$installed_apt_packages"))

if (( ${#apt_packages[@]} > 0 )); then
  e_header "Installing APT packages (${#apt_packages[@]})"
  for package in "${apt_packages[@]}"; do
    e_arrow "$package"
    [[ "$(type -t preinstall_$package)" == function ]] && preinstall_$package
    sudo apt-get -qq install "$package" && \
    [[ "$(type -t postinstall_$package)" == function ]] && postinstall_$package
  done
fi

# Install debs via dpkg
function __temp() { [[ ! -e "$1" ]]; }
deb_installed_i=($(array_filter_i deb_installed __temp))

if (( ${#deb_installed_i[@]} > 0 )); then
  mkdir -p "$installers_path"
  e_header "Installing debs (${#deb_installed_i[@]})"
  for i in "${deb_installed_i[@]}"; do
    e_arrow "${deb_installed[i]}"
    deb="${deb_sources[i]}"
    [[ "$(type -t "$deb")" == function ]] && deb="$($deb)"
    installer_file="$installers_path/$(echo "$deb" | sed 's#.*/##')"
    wget -O "$installer_file" "$deb"
    sudo dpkg -i "$installer_file"
  done
fi

# install bins from zip file
function install_from_zip() {
  local name=$1 url=$2 bins b zip tmp
  shift 2; bins=("$@"); [[ "${#bins[@]}" == 0 ]] && bins=($name)
  if [[ ! "$(which $name)" ]]; then
    mkdir -p "$installers_path"
    e_header "Installing $name"
    zip="$installers_path/$(echo "$url" | sed 's#.*/##')"
    wget -O "$zip" "$url"
    tmp=$(mktemp -d)
    unzip "$zip" -d "$tmp"
    for b in "${bins[@]}"; do
      sudo cp "$tmp/$b" "/usr/local/bin/$(basename $b)"
    done
    rm -rf $tmp
  fi
}

# Run anything else that may need to be run.
type -t other_stuff >/dev/null && other_stuff
