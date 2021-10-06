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
echo '======================       Установка L2TP VPN       ======================='
echo '============================================================================='
sudo add-apt-repository ppa:nm-l2tp/network-manager-l2tp -y
sudo apt update
sudo apt install -y network-manager-l2tp network-manager-l2tp-gnome

I=`dpkg -s sublime-text | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '================   Установка Sublime - редактор текстов   ==================='
echo '============================================================================='
sudo apt-get install -y sublime-text

cp /usr/share/applications/sublime_text.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/sublime_text.desktop"
chmod +x "/home/dima/Рабочий стол/sublime_text.desktop"
fi

I=`dpkg -s putty | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '================       Установка putty - ssh-клиент       ==================='
echo '============================================================================='
sudo apt-get install -y putty
sudo apt-get install -y putty-tools

cp /usr/share/applications/putty.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/putty.desktop"
chmod +x "/home/dima/Рабочий стол/putty.desktop"
fi

I=`dpkg -s filezilla | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '==================   Установка FileZilla - FTP-клиент   ====================='
echo '============================================================================='
sudo apt-get install -y filezilla

cp /usr/share/applications/filezilla.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/filezilla.desktop"
chmod +x "/home/dima/Рабочий стол/filezilla.desktop"
fi

I=`dpkg -s git | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '================   Установка git - система контроля версий   ================'
echo '============================================================================='
sudo apt-get install -y git
fi


I=`dpkg -s kruler | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '===============      Установка kruler - экранная линейка     ================'
echo '============================================================================='
sudo apt-get install -y kruler

cp /usr/share/applications/org.kde.kruler.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/org.kde.kruler.desktop"
chmod +x "/home/dima/Рабочий стол/org.kde.kruler.desktop"
fi


I=`dpkg -s dbeaver-ce | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '================   Установка DBeaver - db managment studio   ================'
echo '============================================================================='
# Ubuntu PPA: https://dbeaver.io/download/
sudo add-apt-repository ppa:serge-rider/dbeaver-ce -y
sudo apt-get update
sudo apt-get install dbeaver-ce

cp /usr/share/applications/dbeaver.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/dbeaver.desktop"
chmod +x "/home/dima/Рабочий стол/dbeaver.desktop"
fi

I=`dpkg -s vstudio | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '=============   Установка Valentina DB - db managment studio   =============='
echo '============================================================================='
# DEB: https://www.valentina-db.com/en/all-downloads/vstudio/current

wget -O vstudio_x64_10_lin.deb https://www.valentina-db.com/en/all-downloads/vstudio/current/vstudio_x64_lin-deb?format=raw
sudo apt-get install -y ./vstudio_x64_10_lin.deb
rm -f ./vstudio_x64_10_lin.deb

cp /usr/share/applications/vstudio.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/vstudio.desktop"
chmod +x "/home/dima/Рабочий стол/vstudio.desktop"
fi

I=`dpkg -s wine | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '=============   Установка Wine - поддержка программ windows   ==============='
echo '============================================================================='
sudo apt-get install -y wine
fi

I=`dpkg -s playonlinux | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '=============    Установка PlayOnLinux - front-end for wine   ==============='
echo '============================================================================='
sudo apt-get install -y playonlinux

cp /usr/share/applications/PlayOnLinux.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/PlayOnLinux.desktop"
chmod +x "/home/dima/Рабочий стол/PlayOnLinux.desktop"
fi

I=`dpkg -s remmina | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '====================   Установка Remmina - RDP-клиент   ====================='
echo '============================================================================='
sudo apt-get install -y remmina

cp /usr/share/applications/org.remmina.Remmina.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/org.remmina.Remmina.desktop"
chmod +x "/home/dima/Рабочий стол/org.remmina.Remmina.desktop"
fi

I=`dpkg -s teamviewer | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '=============   Установка TeamViewer - удаленное управление   ==============='
echo '============================================================================='
wget -nc --tries=5 ./teamviewer_amd64.deb https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt-get install -y ./teamviewer_amd64.deb
rm -f ./teamviewer_amd64.deb

cp /usr/share/applications/com.teamviewer.TeamViewer.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/com.teamviewer.TeamViewer.desktop"
chmod +x "/home/dima/Рабочий стол/com.teamviewer.TeamViewer.desktop"
fi

I=`dpkg -s anydesk | grep "Status"`; if [ ! -n "$I" ]; then
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
fi

I=`dpkg -s mysql-client | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '======================   Установка Mysql Client   ==========================='
echo '============================================================================='
sudo apt-get install -y mysql-client
fi

I=`dpkg -s nodejs | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '======================   Установка Node.JS 15.x   ==========================='
echo '============================================================================='
#https://computingforgeeks.com/install-node-js-14-on-ubuntu-debian-linux-mint/

#installing the required repository
curl -sL https://deb.nodesource.com/setup_15.x | sudo bash -
#installation
sudo apt-get install -y nodejs
#development tools to build native addons
sudo apt-get install gcc g++ make
node -v
fi

I=`dpkg -s yarn | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '===================   Установка Yarn Package Manager  ======================='
echo '============================================================================='
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update -y
sudo apt-get install -y yarn
yarn -v
fi

if [ ! -e /opt/lampp/manager-linux-x64.run ]; then
echo '============================================================================='
echo '===========   Установка XAMPP 7.4 - сервер разработки PHP   ================='
echo '============================================================================='
#https://www.apachefriends.org/download.html
#sudo /opt/lampp/uninstall
wget -nc --tries=5 https://www.apachefriends.org/xampp-files/7.4.14/xampp-linux-x64-7.4.14-1-installer.run
sudo chmod 755 ./xampp-linux-x64-7.4.14-1-installer.run
chmod +x ./xampp-linux-x64-7.4.14-1-installer.run
sudo ./xampp-linux-x64-7.4.14-1-installer.run
sudo chmod 777 /opt/lampp/manager-linux-x64.run
rm -f ./xampp-linux-x64-7.4.14-1-installer.run

#https://imacros.ru/raznoe/linux-xampp-ustanovka.html
echo -e "#!/usr/bin/env xdg-open\n[Desktop Entry]\nComment=Start or Stop XAMPP\nName=XAMPP Control Panel\nExec=sh -c \"pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY sudo /opt/lampp/manager-linux-x64.run\"\nIcon[en_US]=/usr/share/icons/Humanity/devices/24/network-wired.svg\nEncoding=UTF-8\nTerminal=false\nName[en_US]=XAMPP Control Panel\nComment[en_US]=Start or Stop XAMPP\nType=Application\nIcon=/opt/lampp/htdocs/favicon.ico" > "/usr/share/applications/xampp.desktop"
echo -e "#!/usr/bin/env xdg-open\n[Desktop Entry]\nComment=Start or Stop XAMPP\nName=XAMPP Control Panel\nExec=sh -c \"pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY sudo /opt/lampp/manager-linux-x64.run\"\nIcon[en_US]=/usr/share/icons/Humanity/devices/24/network-wired.svg\nEncoding=UTF-8\nTerminal=false\nName[en_US]=XAMPP Control Panel\nComment[en_US]=Start or Stop XAMPP\nType=Application\nIcon=/opt/lampp/htdocs/favicon.ico" > "/home/dima/Рабочий стол/xampp.desktop"
chown dima:sudo "/home/dima/Рабочий стол/xampp.desktop"
chmod +x "/home/dima/Рабочий стол/xampp.desktop"
fi

I=`dpkg -s phpstorm | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '===        Установка https://github.com/JonasGroeger/jetbrains-ppa        ==='
echo '============================================================================='
curl -s https://s3.eu-central-1.amazonaws.com/jetbrains-ppa/0xA6E8698A.pub.asc | sudo apt-key add -
echo "deb http://jetbrains-ppa.s3-website.eu-central-1.amazonaws.com bionic main" | sudo tee /etc/apt/sources.list.d/jetbrains-ppa.list > /dev/null
sudo apt-get update
fi

I=`dpkg -s phpstorm | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '=============       Установка JetBrains PhpStorm IDE      ==================='
echo '============================================================================='
sudo apt-get install -y phpstorm

cp /usr/share/applications/phpstorm.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/phpstorm.desktop"
chmod +x "/home/dima/Рабочий стол/phpstorm.desktop"
fi

I=`dpkg -s webstorm | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '=============       Установка JetBrains WebStrom IDE      ==================='
echo '============================================================================='
sudo apt-get install -y webstorm

cp /usr/share/applications/webstorm.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/webstorm.desktop"
chmod +x "/home/dima/Рабочий стол/webstorm.desktop"
fi

I=`dpkg -s intellij-idea-ultimate | grep "Status"`; if [ ! -n "$I" ]; then
echo '============================================================================='
echo '=============       Установка JetBrains Intellij IDE      ==================='
echo '============================================================================='
sudo apt-get install -y intellij-idea-ultimate

cp /usr/share/applications/intellij-idea-ultimate.desktop "/home/dima/Рабочий стол"
chown dima:sudo "/home/dima/Рабочий стол/intellij-idea-ultimate.desktop"
chmod +x "/home/dima/Рабочий стол/intellij-idea-ultimate.desktop"
fi

I=`dpkg -s android-studio | grep "Status"`; if [ ! -n "$I" ]; then
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
fi

I=`dpkg -s code | grep "Status"`; if [ ! -n "$I" ]; then
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
fi


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
