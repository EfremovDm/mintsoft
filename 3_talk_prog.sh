#!/bin/bash
# Общение

# ------------------------------------------------------------------------------------------------------------
# добавление сторонних репозиториев
# skype
#sudo add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
# telegram
#sudo add-apt-repository -y ppa:atareao/telegram
# Choqok
#sudo add-apt-repository -y ppa:adilson/experimental

echo '============================================================================='
echo '========================   Обновление репозиториев   ========================'
echo '============================================================================='
sudo apt-get update -y
# ------------------------------------------------------------------------------------------------------------
# установка программ

I=`dpkg -s whatsapp-desktop | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '==========================   Установка Whatsapp   ==========================='
echo '============================================================================='
wget -qO- - https://api.github.com/repos/eneshecan/whatsapp-for-linux/releases/latest | grep browser_download_url | grep amd64.deb | cut -d  '"' -f 4 | wget -cqi - -O /tmp/whatsapp.deb
sudo dpkg -i /tmp/whatsapp.deb
fi

I=`dpkg -s skypeforlinux | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '============================   Установка Skype   ============================'
echo '============================================================================='
sudo apt-get install -y skypeforlinux

cp /usr/share/applications/skypeforlinux.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/skypeforlinux.desktop"
chmod +x "/home/dima/Рабочий стол/skypeforlinux.desktop"
fi

echo '============================================================================='
echo '==========================   Установка Telegram   ==========================='
echo '============================================================================='
#sudo apt-get install -y telegram-desktop # very old!!!
sudo flatpak install flathub org.telegram.desktop -y #flatpak
#flatpak run org.telegram.desktop #run
#https://askubuntu.com/questions/476981/how-do-i-make-a-desktop-icon-to-launch-a-program

#I=`dpkg -s discord | grep "Status"`; if [ ! -n "$I" ]; then
#echo '============================================================================='
#echo '============================       Discord      ============================'
#echo '============================================================================'
#wget -O ./discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
#sudo apt install -y ./discord.deb
#rm -f ./discord.deb

#cp /usr/share/applications/discord.desktop "/home/dima/Рабочий стол"
#chown dima:sudo "/home/dima/Рабочий стол/discord.desktop"
#chmod +x "/home/dima/Рабочий стол/discord.desktop"
#fi

#I=`dpkg -s viber | grep "Status"`; if [ ! -n "$I" ]; then
#echo '============================================================================='
#echo '============================   Установка Viber   ============================'
#echo '============================================================================='
#wget -nc --tries=5 https://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
#sudo apt install -y ./viber.deb
#rm -f ./viber.deb

#cp /usr/share/applications/viber.desktop "/home/dima/Рабочий стол"
#chown dima:sudo "/home/dima/Рабочий стол/viber.desktop"
#chmod +x "/home/dima/Рабочий стол/viber.desktop"
#fi

#I=`dpkg -s zoom | grep "Status"`; if [ ! -n "$I" ]; then
#echo '============================================================================='
#echo '============================   Установка Zoom    ============================'
#echo '============================================================================='
#
#wget -nc --tries=5 https://zoom.us/client/latest/zoom_amd64.deb
#sudo apt install -y ./zoom_amd64.deb
#rm -f ./zoom_amd64.deb

#cp /usr/share/applications/Zoom.desktop "/home/dima/Рабочий стол"
#chown dima:sudo "/home/dima/Рабочий стол/Zoom.desktop"
#chmod +x "/home/dima/Рабочий стол/Zoom.desktop"
#fi

# Choqok - twitter-клиент с широким функционалом
#sudo apt-get install -y choqok

# evolution - почта, контакты, календарь в одном флаконе
#sudo apt-get install -y evolution
