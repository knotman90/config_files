# User specific aliases and functions

#alias for sudo. it allows using sudo with aliases
alias sudo='sudo '

# ensures that these commands ask confirmation first
# -i interactive (prompt) -v verbose (explain what is being done)
alias rm='rm -iv'
alias cp='cp -iv'
alias mv='mv -iv'
#ref:
#http://www.thegeekstuff.com/2008/10/6-awesome-linux-cd-command-hacks-productivity-tip3-for-geeks/

#Navigate up the directory using only dots
alias back='cd -' # toggle between the last two directories
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'


# pacman aliases
alias pac='pacman -S'   # install
alias pacu='pacman -Syu'    # update, add 'a' to the list of letters to update AUR packages if you use yaourt
alias pacr='pacman -Rs'   # remove
alias pacs='pacman -Ss'      # search
alias paci='pacman -Si'      # info 
alias pacc='pacman -Scc'    # clean cache
alias paclf='pacman -Ql'   # list files


#task warrior
alias tl='task list' #task warrior
alias ta='task add'
alias tn='task next'
alias td='task done'
