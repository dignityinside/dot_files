alias la="ls --color la"

alias ll='ls -la'

# grep with color output
alias grep="grep --color"

# find static string recursively
alias fs='grep --color -rF'

# find file recursively
ff() { find -type f -name "*$1*"; }

# find directory recursively
fd() { find -type d -name "*$1*"; }

# show my ps
alias myps='ps aux | grep $USER'

# open cd drive
alias open_cd='eject /dev/sr0'

# close cd drive
alias close_cd='eject /dev/sr0 -t'

# show folder size
alias folder_size='du -hs'

# install all deps for an package
alias dpkg_install_deps='sudo apt-get -f install'

# remove package cache
alias dpkg_remove_cache='sudo rm /var/lib/apt/lists/* && sudo apt update'

# xampp
#alias xampp='sudo /opt/lampp/xampp'
#alias xampp_hosts='sudo nano /etc/hosts'
#alias xampp_vhosts='sudo nano /opt/lampp/etc/extra/httpd-vhosts.conf'

# composer alias
#alias composer='php ~/bin/composer.phar'

# fix ssh folder and files permissions
alias fix_ssh='./bin/fix-ssh'

# open folder in sublime (snap)
#alias subl='/snap/bin/sublime-text.subl'

# open folder in sublime text (flatpak)
#alias subl='/var/lib/flatpak/app/com.sublimetext.three/current/active/files/bin/sublime-text.subl'

# youtube-dl (cd ~/bin && wget https://yt-dl.org/downloads/latest/youtube-dl && chmod a+x ~/bin/youtube-dl
#alias yt='~/bin/youtube-dl'

# update youtube-dl
#alias yt_update='yt -U'

# download only mp3 from an youtube video
#alias yt_mp3='yt --extract-audio --audio-format mp3'

# make file system check on kindle device
#alias fix_kindle='sudo fsck.vfat -r /dev/sdc1'

# download server backups to current folder
#alias download_server_backups='scp -r root@xxx:/root/backups .'

# connect to the server
#alias aptenodytes='ssh root@xxx'

# connect to tp-link router
#alias tplink='ssh root@192.168.1.1'
