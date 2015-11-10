# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions



export PYTHONPATH=:/home/knotman/git/opencal/OpenCAL++-Py/lib
export LD_LIBRARY_PATH=:/home/knotman/git/opencal/OpenCAL++-Py/lib

alias mutt="cd ~/mails && mutt"
alias l="ls -lah"
