#!/bin/bash
# Система
# ------------------------------------------------------------------------------------------------------------
# добавление сторонних репозиториев
# wine
#sudo apt-add-repository -y "deb https://dl.winehq.org/wine-builds/ubuntu/"
# ubuntu tweak tool
#sudo add-apt-repository -y ppa:tualatrix/ppa
# RemasterSys
#sudo apt-add-repository -y ppa:mutse-young/remastersys
# deluge
#sudo add-apt-repository -y ppa:deluge-team/ppa

echo "deb https://apt.enpass.io/ stable main" > /etc/apt/sources.list.d/enpass.list

wget -O - https://apt.enpass.io/keys/enpass-linux.key | apt-key add -

# обновление репозиториев
sudo apt-get update
# ------------------------------------------------------------------------------------------------------------
# установка программ

echo '=========================== Установка интернет-браузера chromium-browser ===============================' 
sudo apt-get install -y chromium-browser
cp /usr/share/applications/chromium-browser.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/chromium-browser.desktop"
chmod +x "/home/dima/Рабочий стол/chromium-browser.desktop"

echo '================================== Установка менеджера паролей enpass ==================================' 
sudo apt-get install -y enpass
cp /usr/share/applications/enpass.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/enpass.desktop"
chmod +x "/home/dima/Рабочий стол/enpass.desktop"

echo '=================================== Установка Midnight Commander =======================================' 
sudo apt-get install -y mc

echo '========================================== Установка Vim ===============================================' 
sudo apt-get install -y vim

echo '========================================== Установка htop ==============================================' 
sudo apt-get install -y htop

echo '======================================== Установка preload =============================================' 
sudo apt-get install -y preload # демон, собирающий информацию о наиболее часто запускаемых приложениях для ускорения их запуска

echo '========================================== Установка ярлыков ===========================================' 
cp /usr/share/applications/org.gnome.Terminal.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/org.gnome.Terminal.desktop"
chmod +x "/home/dima/Рабочий стол/org.gnome.Terminal.desktop"

# Java-машина
#sudo apt-get install -y icedtea-8-plugin openjdk-8-jre

# wine - для запуска приложений windows из под Linux
#sudo dpkg --add-architecture i386
#wget -nc --tries=5 https://dl.winehq.org/wine-builds/Release.key
#sudo apt-key add Release.key
#sudo apt-get install -y --install-recommends winehq-stable

# virtualbox - программа для создания и управления виртуальных машин
#wget -nc --tries=5 https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
#sudo apt-get install -y virtualbox-5.1

# synaptic - менеджер пакетов
#sudo apt-get install -y synaptic

# GParted - диспетчер дисков
#sudo apt-get install -y gparted

# UnetBootin - создание загрузочной флешки
#sudo apt install -y unetbootin

# unity tweak tools - программа настройки окружения unity
#sudo apt-get install -y unity-tweak-tool

# gnome tweak tools - программа настройки окружения gnome
#sudo apt-get install -y gnome-tweak-tool

# ubuntu tweak tools - программа настройки ubuntu
#sudo apt-get install -y ubuntu-tweak

# установка программ для работы с различными типами архивов
#sudo apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller

# Deluge - торрент-клиент
#sudo apt-get install -y deluge

# Ubuntu Customization Kit - система сборки
#sudo apt-get install -y uck
