# Caution : Terminal looses track of characters printed on a line
# if non-printable characters are not enclosed by '\[' and '\]'.
#
# Ref : https://www.codeproject.com/Articles/5329247/How-to-Change-Text-Color-in-a-Linux-Terminal
#
# Foreground Color - "\033[" + "<0 or 1, meaning normal or bold>;" + "<color code> + "m"
function FG {
  local HL=0
  if [ "$1" == "b" ]
  then
    HL=1
  fi
  printf "\033[%d;%dm" $HL $2
}
# Background Color - "\033[" + "<color code>" + "m"
function BG {
  printf "\033[%dm" $1
}
# Local prompt
function SET_PS12 {
  # DarkRed on Yellow
  local ESC_T='\[$(FG 0 31)$(BG 103)\]'
  local RESET='\[$(BG 0)\]'

  # Enhanced prompt elements
  local PS_T="$ESC_T\t$RESET"
  local PS_U="$ESC_T\u$RESET"
  local PS_H="$ESC_T\h$RESET"
  local PS_W="$ESC_T\w$RESET"

  PS1="$PS_T $PS_U@$PS_H $PS_W > $RESET"
  PS2="Contd.$ESC_T-> $RESET"
}

SET_PS12