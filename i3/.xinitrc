export CLICOLOR=TRUE
exec sh ~/.fehbg &
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec i3
