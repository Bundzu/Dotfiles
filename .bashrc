#PS1='[\u@\h \W]\$ '  # To leave the default one
PS1="\[\033[0;37m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[0;31m\]\h'; else echo '\[\033[0;33m\]\u\[\033[0;37m\]@\[\033[0;96m\]\h'; fi)\[\033[0;37m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;37m\]]\n\[\033[0;37m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]"
shopt -s autocd
stty -ixon
HISTSIZE=20
HISTFILESIZE=30
if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || exec startx
fi

alias ytdl='youtube-dl'
alias pogoda='./skrypty/pogoda'
alias blue='bluetoothctl'
alias packages='cat /var/lib/portage/world'
alias configs='eix-test-obsolete'