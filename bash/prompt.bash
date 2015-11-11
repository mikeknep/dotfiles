# Prompt

## Display git info in prompt
alias vcbranch="vcprompt -f '%b'"
alias vcinfo="vcprompt -f '%m%u%a'"


## Set readable grey color based on background color
if [ "${ITERM_PROFILE,,}" = 'devdark' ]
then
  USERHOST_COLOR="${LIGHT_GRAY}"
else
  USERHOST_COLOR="${DARK_GRAY}"
fi


## The prompt
export PS1="\n\[$USERHOST_COLOR\](\u@\h) \[$LIGHT_BLUE\](\w) \[$YELLOW\]\$(vcbranch)\[$RED\]\$(vcinfo)\n\[$CYAN\]$ \[$RESET\]"
