#!/usr/bin/env bash

separator="-----------------------------------------------------------------------------------------"

echo "$separator"
echo "INSTALLING: minimal applications"
echo "$separator"

function minimalapps()
{
  dnf install -y \
    arandr \
    rofi \
    kitty \
    bspwm \
    sxhkd \
    polybar \
    thunar \
    vim \
    firefox \
    snapd \
    lxappearance \
    pulseaudio \
    nitrogen \
    feh \
    unzip \
    flameshot \
    redshift \
    pavucontrol \
    nitrogen \
    neofetch \
    libreoffice \
    bluez \
    bluez-tools \
    flatpak \
    fontawesome5-fonts-all.noarch \
    R-fontawesome.noarch \
    fontawesome-fonts.noarch \
    fontawesome-fonts-web.noarch \
    fontawesome5-brands-fonts.noarch \
    fontawesome5-fonts-web.noarch \
    fontawesome5-free-fonts.noarch \
    texlive-fontawesome.noarch \
    texlive-fontawesome5.noarch \
    keepassxc

  echo $separator
  echo "SUCCESS!: minimal applications installed"
  echo $separator
}
minimalapps

function developingapps()
{
  echo $separator
  echo "INSTALLING: development tools and packages"
  echo $separator

  dnf install -yy \
    curl \
    gcc-c++ \
    clang \
    SDL2 \
    SDL2-devel \
    SDL2_ttf \
    SDL2_ttf-devel \
    R \
    rstudio-desktop \
    bear \
    cmake \
    python \
    pkg-config \
    json-devel \
    spdlog-devel \
    fmt-devel \
    grpc-devel \
    grpc-plugins \
    gtest-devel \
    gmock-devel \
    dbus-devel \
    gcc \
    libconfig-devel \
    libdrm-devel \
    libev-devel \
    libX11-devel \
    libX11-xcb \
    libXext-devel \
    libxcb-devel \
    mesa-libGL-devel \
    meson \
    pcre-devel \
    pixman-devel \
    uthash-devel \
    xcb-util-image-devel \
    xcb-util-renderutil-devel \
    xorg-x11-proto-devel \

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  echo $separator
  echo "SUCCESS: development tools and packages installed"
  echo $separator
}
developingapps

function Cvim()
{
  echo $separator
  echo "INSTALLING: components and configurations for Intellisense and autocompletion for C languages in Vim"
  echo $separator
  
  echo '* Node.js'
  curl -sL install-node.vercel.app/lts | bash

#  echo '* CCLS'
#  snap install --classic ccls
}
Cvim

function rofithemes()
{
    git clone --depth=1 https://github.com/adi1090x/rofi.git \
    cd rofi \
    chmod +x setup.sh \
    ./setup.sh \
    cd ~ \
    rm -rf rofi
}
rofithemes

function pijulius()
{
    git clone https://github.com/pijulius/picom \
    cd picom \
    git submodule update --init --recursive \
    meson --buildtype=release . build \
    ninja -C build \
    ninja -C build install \
    cd ~ \
    rm -rf picom
}
pijulius

sudo cp /home/matias/fedoraHapless/fonts/* /usr/share/fonts/
sudo yum localinstall /home/matias/fedoraHapless/ocs-url-3.1.0-1.fc20.x86_64.rpm

echo $separator
echo 'SETTING: Config the autologin with the following command: sudo vim /etc/sddm.conf and uncomment Session=bspwm \ User=username and then reboot the system'
echo $separator
