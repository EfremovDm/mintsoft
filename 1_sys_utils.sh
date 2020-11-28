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

# обновление репозиториев
echo '============================================================================='
echo '========================   Обновление репозиториев   ========================'
echo '============================================================================='
sudo apt-get update
# ------------------------------------------------------------------------------------------------------------
# установка программ

echo '============================================================================='
echo '=====================   Установка Midnight Commander   ======================'
echo '============================================================================='
sudo apt-get install -y mc

echo '============================================================================='
echo '=============================   Установка Vim   ============================='
echo '============================================================================='
sudo apt-get install -y vim

echo '============================================================================='
echo '===========================   Установка cURL   =============================='
echo '============================================================================='
sudo apt-get install -y curl

echo '============================================================================='
echo '=============================   Установка htop   ============================'
echo '============================================================================='
sudo apt-get install -y htop

echo '============================================================================='
echo '===========================   Установка preload   ==========================='
echo '============================================================================='
sudo apt-get install -y preload

echo '============================================================================='
echo '===========================   Установка dos2unix   =========================='
echo '============================================================================='
sudo apt-get install -y dos2unix

echo '============================================================================='
echo '============================   Установка ярлыков   =========================='
echo '============================================================================='
echo 'Terminal'
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
