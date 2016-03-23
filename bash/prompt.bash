# Prompt

## Display git info in prompt
alias vcbranch="vcprompt -f '%b'"
alias vcinfo="vcprompt -f '%m%u%a'"


## Set colors based on terminal program
if [ $TERM_PROGRAM = 'Apple_Terminal' ]
then
  USERHOST_COLOR="${DARK_GRAY}"
  PATH_COLOR="${DARK_GRAY}"
  GIT_BRANCH_COLOR="${DARK_GRAY}"
  GIT_STATUS_COLOR="${DARK_GRAY}"
  DOLLAR_COLOR="${DARK_GRAY}"
else
  USERHOST_COLOR="${LIGHT_GRAY}"
  PATH_COLOR="${LIGHT_BLUE}"
  GIT_BRANCH_COLOR="${YELLOW}"
  GIT_STATUS_COLOR="${RED}"
  DOLLAR_COLOR="${CYAN}"
fi


## The prompt
export PS1="\n\[$USERHOST_COLOR\](\u@\h) \[$PATH_COLOR\](\w) \[$GIT_BRANCH_COLOR\]\$(vcbranch)\[$GIT_STATUS_COLOR\]\$(vcinfo)\n\[$DOLLAR_COLOR\]$ \[$RESET\]"
