# get the nvm-controlled node.js version
function nvm_prompt_info() {
  (( $+commands[nvm] )) || return
  local nvm_prompt=${$(nvm current)#v}
  echo "${ZSH_THEME_NVM_PROMPT_PREFIX}${nvm_prompt:gs/%/%%}${ZSH_THEME_NVM_PROMPT_SUFFIX}"
}
