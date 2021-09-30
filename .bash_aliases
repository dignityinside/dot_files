# go one folder up
alias ..='cd ..'

# colorize ls
alias ls='ls --color=auto'

# long listing and all
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

# cancel all process, which name like argument $1
ps_stop(){ ps -e| grep $1 | awk '{print $1}' | while read p; do kill -STOP $p; echo $p stoped; done; }

# continue process, which name like argument $1
ps_continue(){ ps -e| grep $1 | awk '{print $1}' | while read p; do kill -CONT $p; echo $p continued; done; }

# extract archive by format
extract_file() {
  if [ $# -ne 1 ]
  then
    echo "Error: No file specified."
    return 1
  fi
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2) tar xvjf $1   ;;
            *.tar.gz)  tar xvzf $1   ;;
            *.bz2)     bunzip2 $1    ;;
            *.rar)     unrar x $1    ;;
            *.gz)      gunzip $1     ;;
            *.tar)     tar xvf $1    ;;
            *.tbz2)    tar xvjf $1   ;;
            *.tgz)     tar xvzf $1   ;;
            *.zip)     unzip $1      ;;
            *.Z)       uncompress $1 ;;
            *.7z)      7z x $1       ;;
            *)         echo "'$1' cannot be extracted via extract" ;;
        esac
    else
        echo "'$1' is not a valid archive file"
    fi
}

# highlight keyword, example: cat .bashrc | highlight alias
highlight () {
	perl -pe "s/$1/\e[1;36;46m$&\e[0m/g";
}

# make dir with current date (Y-m-d)
alias mkdd='mkdir $(date +%Y-%m-%d)'

# set the HOME environment variable to the home directory specified by the target user's password database entry
alias sudo='sudo -H'

# search in the history
alias hgrep='history | grep'

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

# build docker
alias docker_build='docker-compose build'

# start docker
alias docker_up='docker-compose up -d'

# stop docker
alias docker_down='docker-compose down'

# enter docker
alias docker_ssh='docker-compose exec php /bin/bash'

# stop all docker container
alias docker_stop='docker stop $(docker ps -aq)'

# remove all docker container
alias docker_fresh='docker system prune --volumes -af'

# show docker logs
alias docker_log='docker-compose logs -f'

# fix ssh folders and files permissions
alias fix_ssh='./bin/fix-ssh'

# youtube-dl (cd ~/bin && wget https://yt-dl.org/downloads/latest/youtube-dl && chmod a+x ~/bin/youtube-dl
alias yt='~/bin/youtube-dl'

# update youtube-dl
alias yt_update='yt -U'

# download only mp3 from an youtube video
alias yt_mp3='youtube-dl --extract-audio --audio-format mp3'

# make file system check on kindle device
alias fix_kindle='sudo fsck.vfat -r /dev/sdc1'

# changes in undone revisions are preserved
alias undo_last_commit_soft='git reset --soft HEAD~1'

# changes in undone revisions are not preserved
alias undo_last_commit_hard='git reset --hard HEAD~1'

# open folder with ppa
alias ppa_sources='cd /etc/apt/sources.list.d/'

# cd to code folder
alias code="cd ~/Code"

# run python3 as python
alias python=python3
