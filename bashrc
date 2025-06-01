[[ $- != *i* ]] && return
for f in $HOME/.bashrc.d/*.bash ; do source $f ; done
unset f
