#!/bin/bash
# Разработка

# ------------------------------------------------------------------------------------------------------------
# добавление сторонних репозиториев
# cherry tree
#sudo add-apt-repository -y ppa:giuspen/ppa
# ubuntu make
#sudo add-apt-repository -y ppa:ubuntu-desktop/ubuntu-make

echo '============================================================================='
echo '========================   Обновление репозиториев   ========================'
echo '============================================================================='
sudo apt-get update

# ------------------------------------------------------------------------------------------------------------
# установка программ

echo '============================================================================='
echo '================   Установка Sublime - редактор текстов   ==================='
echo '============================================================================='
sudo apt-get install -y sublime-text
cp /usr/share/applications/sublime_text.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/sublime_text.desktop"
chmod +x "/home/dima/Рабочий стол/sublime_text.desktop"

echo '============================================================================='
echo '==================   Установка FileZilla - FTP-клиент   ====================='
echo '============================================================================='
sudo apt-get install -y filezilla
cp /usr/share/applications/filezilla.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/filezilla.desktop"
chmod +x "/home/dima/Рабочий стол/filezilla.desktop"

echo '============================================================================='
echo '================   Установка git - система контроля версий   ================'
echo '============================================================================='
sudo apt-get install -y git

echo '============================================================================='
echo '====================   Установка Remmina - RDP-клиент   ====================='
echo '============================================================================='
sudo apt-get install -y remmina
cp /usr/share/applications/org.remmina.Remmina.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/org.remmina.Remmina.desktop"
chmod +x "/home/dima/Рабочий стол/org.remmina.Remmina.desktop"

echo '============================================================================='
echo '=============   Установка TeamViewer - удаленное управление   ==============='
echo '============================================================================='
wget -nc --tries=5 https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo gdebi teamviewer_amd64.deb
rm -f ./teamviewer_amd64.deb
cp /usr/share/applications/com.teamviewer.TeamViewer.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/com.teamviewer.TeamViewer.desktop"
chmod +x "/home/dima/Рабочий стол/com.teamviewer.TeamViewer.desktop"

echo '============================================================================='
echo '===========================   Установка cURL   =============================='
echo '============================================================================='
sudo apt-get install -y curl

echo '============================================================================='
echo '======================   Установка Mysql Client   ==========================='
echo '============================================================================='
sudo apt-get install -y mysql-client

echo '============================================================================='
echo '=============   Установка XAMPP - сервер разработки PHP   ==================='
echo '============================================================================='
wget -nc --tries=5 https://www.apachefriends.org/xampp-files/7.2.16/xampp-linux-x64-7.2.16-1-installer.run
sudo chmod 755 xampp-linux-x64-7.2.16-1-installer.run
chmod +x xampp-linux-x64-7.2.16-1-installer.run
sudo ./xampp-linux-x64-7.2.16-1-installer.run
sudo chmod 777 /opt/lampp/manager-linux-x64.run
sudo /opt/lampp/manager-linux-x64.run
#https://imacros.ru/raznoe/linux-xampp-ustanovka.html
echo -e "#!/usr/bin/env xdg-open\n[Desktop Entry]\nComment=Start or Stop XAMPP\nName=XAMPP Control Panel\nExec=sh -c \"pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY sudo /opt/lampp/manager-linux-x64.run\"\nIcon[en_US]=/usr/share/icons/Humanity/devices/24/network-wired.svg\nEncoding=UTF-8\nTerminal=false\nName[en_US]=XAMPP Control Panel\nComment[en_US]=Start or Stop XAMPP\nType=Application\nIcon=/opt/lampp/htdocs/favicon.ico" > "/usr/share/applications/xampp.desktop"
echo -e "#!/usr/bin/env xdg-open\n[Desktop Entry]\nComment=Start or Stop XAMPP\nName=XAMPP Control Panel\nExec=sh -c \"pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY sudo /opt/lampp/manager-linux-x64.run\"\nIcon[en_US]=/usr/share/icons/Humanity/devices/24/network-wired.svg\nEncoding=UTF-8\nTerminal=false\nName[en_US]=XAMPP Control Panel\nComment[en_US]=Start or Stop XAMPP\nType=Application\nIcon=/opt/lampp/htdocs/favicon.ico" > "/home/dima/Рабочий стол/xampp.desktop"
chown dima:sudo "/home/dima/Рабочий стол/xampp.desktop"
chmod +x "/home/dima/Рабочий стол/xampp.desktop"

echo '============================================================================='
echo '============================   Установка ярлыков   =========================='
echo '============================================================================='
echo "[Desktop Entry]
Version=1.0
Type=Application
Name=PhpStorm
Icon=/home/dima/Программы/PhpStorm-2019.1/bin/phpstorm.svg
Exec="/home/dima/Программы/PhpStorm-2019.1/bin/phpstorm.sh" %f
Comment=Lightning-smart PHP IDE
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-phpstorm
" > "/home/dima/Рабочий стол/jetbrains-phpstorm.desktop";
chown dima:sudo "/home/dima/Рабочий стол/jetbrains-phpstorm.desktop"
chmod +x "/home/dima/Рабочий стол/jetbrains-phpstorm.desktop"

# ubuntu make - программа установки инструментов разработчиков, нужна для установки PyCharm и прочих
#sudo apt-get install -y ubuntu-make

# python 3.6 - новый питон
#sudo apt-get install -y python3.6

# cherry tree - создание собственной базы данных древовидной структуры
#sudo apt-get install -y cherrytree

# pycharm community - IDE для Python, бесплатная версия из официального репозитория
#sudo umake ide pycharm

# Double Commander - двухпанельный менеджер
#sudo apt install -y doublecmd-qt

# packaging-dev - инструментарий для сборки пакетов
#sudo apt-get install -y packaging-dev

# CheckInstall - утилита, позволяющая создавать бинарные пакеты для Linux из исходного кода приложения
#sudo apt-get install -y checkinstall
