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
wget -nc --tries=5 ./teamviewer_amd64.deb https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt-get install -y ./teamviewer_amd64.deb
rm -f ./teamviewer_amd64.deb

cp /usr/share/applications/com.teamviewer.TeamViewer.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/com.teamviewer.TeamViewer.desktop"
chmod +x "/home/dima/Рабочий стол/com.teamviewer.TeamViewer.desktop"

echo '============================================================================='
echo '=============     Установка AnyDesk - удаленное управление    ==============='
echo '============================================================================='
sudo apt install -y gnupg2 #инструмент GNU для безопасной коммуникации и хранения данных
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add - # Import repository GPG Key
sudo sh -c 'echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk.list' # Add Anydesk APT repository to your Linux Mint system.
sudo apt-get update
sudo apt-get install -y anydesk

cp /usr/share/applications/anydesk.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/anydesk.desktop"
chmod +x "/home/dima/Рабочий стол/anydesk.desktop"

echo '============================================================================='
echo '======================   Установка Mysql Client   ==========================='
echo '============================================================================='
sudo apt-get install -y mysql-client

echo '============================================================================='
echo '======================   Установка Node.JS 14.x   ==========================='
echo '============================================================================='
#https://computingforgeeks.com/install-node-js-14-on-ubuntu-debian-linux-mint/

#installing the required repository
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
#installation
sudo apt-get install -y nodejs
#development tools to build native addons
sudo apt-get install gcc g++ make
node -v

echo '============================================================================='
echo '===================   Установка Yarn Package Manager  ======================='
echo '============================================================================='
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install -y yarn
yarn -v

echo '============================================================================='
echo '=============   Установка XAMPP - сервер разработки PHP   ==================='
echo '============================================================================='
wget -nc --tries=5 https://www.apachefriends.org/xampp-files/7.2.16/xampp-linux-x64-7.2.16-1-installer.run
sudo chmod 755 ./xampp-linux-x64-7.2.16-1-installer.run
chmod +x ./xampp-linux-x64-7.2.16-1-installer.run
sudo ./xampp-linux-x64-7.2.16-1-installer.run
sudo chmod 777 /opt/lampp/manager-linux-x64.run
sudo /opt/lampp/manager-linux-x64.run
rm -f ./xampp-linux-x64-7.2.16-1-installer.run

#https://imacros.ru/raznoe/linux-xampp-ustanovka.html
echo -e "#!/usr/bin/env xdg-open\n[Desktop Entry]\nComment=Start or Stop XAMPP\nName=XAMPP Control Panel\nExec=sh -c \"pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY sudo /opt/lampp/manager-linux-x64.run\"\nIcon[en_US]=/usr/share/icons/Humanity/devices/24/network-wired.svg\nEncoding=UTF-8\nTerminal=false\nName[en_US]=XAMPP Control Panel\nComment[en_US]=Start or Stop XAMPP\nType=Application\nIcon=/opt/lampp/htdocs/favicon.ico" > "/usr/share/applications/xampp.desktop"
echo -e "#!/usr/bin/env xdg-open\n[Desktop Entry]\nComment=Start or Stop XAMPP\nName=XAMPP Control Panel\nExec=sh -c \"pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY sudo /opt/lampp/manager-linux-x64.run\"\nIcon[en_US]=/usr/share/icons/Humanity/devices/24/network-wired.svg\nEncoding=UTF-8\nTerminal=false\nName[en_US]=XAMPP Control Panel\nComment[en_US]=Start or Stop XAMPP\nType=Application\nIcon=/opt/lampp/htdocs/favicon.ico" > "/home/dima/Рабочий стол/xampp.desktop"
chown dima:sudo "/home/dima/Рабочий стол/xampp.desktop"
chmod +x "/home/dima/Рабочий стол/xampp.desktop"

echo '============================================================================='
echo '===        Установка https://github.com/JonasGroeger/jetbrains-ppa        ==='
echo '============================================================================='
curl -s https://s3.eu-central-1.amazonaws.com/jetbrains-ppa/0xA6E8698A.pub.asc | sudo apt-key add -
echo "deb http://jetbrains-ppa.s3-website.eu-central-1.amazonaws.com bionic main" | sudo tee /etc/apt/sources.list.d/jetbrains-ppa.list > /dev/null
sudo apt-get update

echo '============================================================================='
echo '=============       Установка JetBrains PhpStorm IDE      ==================='
echo '============================================================================='
sudo apt-get install -y phpstorm

cp /usr/share/applications/phpstorm.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/phpstorm.desktop"
chmod +x "/home/dima/Рабочий стол/phpstorm.desktop"

echo '============================================================================='
echo '=============       Установка JetBrains WebStrom IDE      ==================='
echo '============================================================================='
sudo apt-get install -y webstorm

cp /usr/share/applications/webstorm.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/webstorm.desktop"
chmod +x "/home/dima/Рабочий стол/webstorm.desktop"

echo '============================================================================='
echo '=============       Установка JetBrains Intellij IDE      ==================='
echo '============================================================================='
sudo apt-get install -y intellij-idea-ultimate

cp /usr/share/applications/intellij-idea-ultimate.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/intellij-idea-ultimate.desktop"
chmod +x "/home/dima/Рабочий стол/intellij-idea-ultimate.desktop"

echo '============================================================================='
echo '=============         Установка Android Studio IDE        ==================='
echo '============================================================================='
sudo apt-get install -y openjdk-11-jre-headless
sudo apt-add-repository -y ppa:maarten-fonville/android-studio
sudo apt-get update
sudo apt-get install -y android-studio
#sudo apt-get install -y android-studio-preview

cp /usr/share/applications/android-studio.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/android-studio.desktop"
chmod +x "/home/dima/Рабочий стол/android-studio.desktop"

echo '============================================================================='
echo '=============              Установка VsCode               ==================='
echo '============================================================================='
#https://code.visualstudio.com/docs/setup/linux

# The repository and key can also be installed manually with the following script:
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y code
#sudo apt-get install -y code-insiders

cp /usr/share/applications/code.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/code.desktop"
chmod +x "/home/dima/Рабочий стол/code.desktop"



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
