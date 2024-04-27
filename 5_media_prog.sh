#!/bin/bash
# Медиа

# ------------------------------------------------------------------------------------------------------------
# добавление сторонних репозиториев
# кодеки
#sudo add-apt-repository -y "deb http://download.videolan.org/pub/debian/stable/ /"
# handbrake
#sudo add-apt-repository -y ppa:stebbins/handbrake-releases
# OpenShot
#sudo add-apt-repository -y ppa:openshot.developers/ppa

echo '============================================================================='
echo '========================   Обновление репозиториев   ========================'
echo '============================================================================='
sudo apt-get update -y
# ------------------------------------------------------------------------------------------------------------
# установка программ

I=`dpkg -s gimp | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '================   Установка Gimp - редактор изображений   =================='
echo '============================================================================='
sudo apt-get install -y gimp gimp-data gimp-plugin-registry gimp-data-extras

cp /usr/share/applications/gimp.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/gimp.desktop"
chmod +x "/home/dima/Рабочий стол/gimp.desktop"
fi

I=`dpkg -s krita | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '================   Установка Krita - редактор изображений   ================='
echo '============================================================================='
sudo apt-get install -y krita

cp /usr/share/applications/org.kde.krita.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/org.kde.krita.desktop"
chmod +x "/home/dima/Рабочий стол/org.kde.krita.desktop"
fi

I=`dpkg -s vlc | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '==================   Установка Vlc - универсальный плеер   =================='
echo '============================================================================='
sudo apt-get install -y vlc

cp /usr/share/applications/vlc.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/vlc.desktop"
chmod +x "/home/dima/Рабочий стол/vlc.desktop"
fi

# установка мультимедиа-кодеков сторонних производителей
#sudo apt-get install -y ubuntu-restricted-extras

# установка кодека для чтения лецинзионных дисков
#wget -nc --tries=5 http://download.videolan.org/pub/debian/videolan-apt.asc | sudo apt-key add -
#sudo apt-get install -y libdvdcss2

# handbrake - конвертер медиа-файлов
#sudo apt-get install -y handbrake-gtk

# OpenShot - легкий видеоредактор
#sudo apt-get install -y openshot-qt

# удаление плеера rhythmbox
#sudo apt-get purge -y rhythmbox

# удаление видеоплеера totem
#sudo apt-get purge -y totem

# Clementine - мультимедиа-плеер
#sudo apt-get install clementine
