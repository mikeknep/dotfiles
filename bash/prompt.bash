# Prompt

## Display git info in prompt
alias vcbranch="vcprompt -f '%b'"
alias vcinfo="vcprompt -f '%m%u%a'"

## The prompt
export PS1="\n\[$PROMPT_USERHOST_COLOR\](\u@\h) \[$PROMPT_PATH_COLOR\](\w) \[$PROMPT_GIT_BRANCH_COLOR\]\$(vcbranch) \[$PROMPT_GIT_STATUS_COLOR\]\$(vcinfo)\n\[$PROMPT_DOLLAR_COLOR\]$ \[$PROMPT_RESET\]"
