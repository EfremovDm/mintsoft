#!/bin/bash
# Интернет-программы
# ------------------------------------------------------------------------------------------------------------
# добавление сторонних репозиториев
# wine
#sudo apt-add-repository -y "deb https://dl.winehq.org/wine-builds/ubuntu/"
# ubuntu tweak tool
#sudo add-apt-repository -y ppa:tualatrix/ppa
# RemasterSys
#sudo apt-add-repository -y ppa:mutse-young/remastersys
# deluge
#sudo add-apt-repository -y ppa:deluge-team/ppa-

echo '============================================================================='
echo '========================   Обновление репозиториев   ========================'
echo '============================================================================='
sudo apt-get update
# ------------------------------------------------------------------------------------------------------------
# установка программ

echo '============================================================================='
echo '============      Установка Chromium - интернет-браузер       ==============='
echo '============================================================================='
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
rm -f ./google-chrome-stable_current_amd64.deb

cp /usr/share/applications/google-chrome.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/google-chrome.desktop"
chmod +x "/home/dima/Рабочий стол/google-chrome.desktop"

echo '============================================================================='
echo '===================   Установка Enpass - менеджер паролей ==================='
echo '============================================================================='
echo "deb https://apt.enpass.io/ stable main" > /etc/apt/sources.list.d/enpass.list
wget -O - https://apt.enpass.io/keys/enpass-linux.key | apt-key add -
sudo apt-get update && sudo apt-get install -y enpass

cp /usr/share/applications/enpass.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/enpass.desktop"
chmod +x "/home/dima/Рабочий стол/enpass.desktop"

echo '============================================================================='
echo '============   Установка Evolution - почтовый exchange-клиент  =============='
echo '============================================================================='
sudo apt-get install -y evolution
sudo apt-get install -y evolution-ews

cp /usr/share/applications/org.gnome.Evolution.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/org.gnome.Evolution.desktop"
chmod +x "/home/dima/Рабочий стол/org.gnome.Evolution.desktop"
