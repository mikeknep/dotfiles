# Prompt

## Display git info in prompt
alias vcbranch="vcprompt -f '%b'"
alias vcinfo="vcprompt -f '%m%u%a'"


## Set readable colors based on background color
if [ "${ITERM_PROFILE,,}" = 'devdark' ]
then
  USERHOST_COLOR="${LIGHT_GRAY}"
  GIT_COLOR="${YELLOW}"
else
  USERHOST_COLOR="${DARK_GRAY}"
  GIT_COLOR="${RED}"
fi


## The prompt
export PS1="\n\[$USERHOST_COLOR\](\u@\h) \[$LIGHT_BLUE\](\w) \[$GIT_COLOR\]\$(vcbranch)\[$RED\]\$(vcinfo)\n\[$CYAN\]$ \[$RESET\]"
