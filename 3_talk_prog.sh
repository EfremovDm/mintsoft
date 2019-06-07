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
# обновление репозиториев
sudo apt-get update
# ------------------------------------------------------------------------------------------------------------
# установка программ

echo '========================================== Установка Skype ============================================' 
sudo apt-get install -y skypeforlinux
cp /usr/share/applications/skypeforlinux.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/skypeforlinux.desktop"
chmod +x "/home/dima/Рабочий стол/skypeforlinux.desktop"

echo '========================================= Установка Telegram ==========================================' 
sudo apt-get install -y telegram-desktop
cp /usr/share/applications/telegramdesktop.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/telegramdesktop.desktop"
chmod +x "/home/dima/Рабочий стол/telegramdesktop.desktop"

echo '=========================================== Установка Viber ===========================================' 
wget -nc --tries=5 https://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
sudo gdebi viber.deb
rm -f ./viber.deb
cp /usr/share/applications/viber.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/viber.desktop"
chmod +x "/home/dima/Рабочий стол/viber.desktop"

# Choqok - twitter-клиент с широким функционалом
#sudo apt-get install -y choqok

# evolution - почта, контакты, календарь в одном флаконе
#sudo apt-get install -y evolution
