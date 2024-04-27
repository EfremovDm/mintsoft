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
sudo apt-get update -y
# ------------------------------------------------------------------------------------------------------------
# установка программ

I=`dpkg -s google-chrome-stable | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '============      Установка Chromium - интернет-браузер       ==============='
echo '============================================================================='
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo apt install -y ./google-chrome-stable_current_amd64.deb
#rm -f ./google-chrome-stable_current_amd64.deb
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
c add-apt-repository "deb http://dl.google.com/linux/chrome/deb/ stable main"
sudo apt update -y
sudo apt install google-chrome-stable

cp /usr/share/applications/google-chrome.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/google-chrome.desktop"
chmod +x "/home/dima/Рабочий стол/google-chrome.desktop"
fi


I=`dpkg -s torbrowser-launcher | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '============               Установка Tor Browser              ==============='
echo '============================================================================='
sudo apt install torbrowser-launcher -y

cp /usr/share/applications/torbrowser.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/torbrowser.desktop"
chmod +x "/home/dima/Рабочий стол/torbrowser.desktop"
fi

I=`dpkg -s enpass | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '===================   Установка Enpass - менеджер паролей ==================='
echo '============================================================================='
echo "deb https://apt.enpass.io/ stable main" > /etc/apt/sources.list.d/enpass.list
wget -O - https://apt.enpass.io/keys/enpass-linux.key | sudo apt-key add -
sudo apt-get update -y
sudo apt-get install -y enpass

cp /usr/share/applications/enpass.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/enpass.desktop"
chmod +x "/home/dima/Рабочий стол/enpass.desktop"
fi

I=`dpkg -s evolution | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '============   Установка Evolution - почтовый exchange-клиент  =============='
echo '============================================================================='
sudo apt-get install -y evolution
sudo apt-get install -y evolution-ews

cp /usr/share/applications/org.gnome.Evolution.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/org.gnome.Evolution.desktop"
chmod +x "/home/dima/Рабочий стол/org.gnome.Evolution.desktop"
fi
