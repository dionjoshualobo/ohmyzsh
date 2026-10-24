# VS Code (stable / insiders) / VSCodium / Cursor zsh plugin
# Authors:
#   https://github.com/MarsiBarsi (original author)
#   https://github.com/babakks
#   https://github.com/SteelShot
#   https://github.com/AliSajid

# Verify if any manual user choice of VS Code exists first.
if [[ -n "$VSCODE" ]] && ! (( $+commands[$VSCODE] )); then
  echo "'$VSCODE' flavour of VS Code not detected."
  unset VSCODE
fi

# Otherwise, try to detect a flavour of VS Code.
if [[ -z "$VSCODE" ]]; then
  if (( $+commands[code] )); then
    VSCODE=code
  elif (( $+commands[code-insiders] )); then
    VSCODE=code-insiders
  elif (( $+commands[codium] )); then
    VSCODE=codium
  elif (( $+commands[cursor] )); then
    VSCODE=cursor
  elif (( $+commands[windsurf] )); then
    VSCODE=windsurf
  elif (( $+commands[openvscode-server] )); then
    VSCODE=openvscode-server
  elif (( $+commands[antigravity] )); then
    VSCODE=antigravity
  else
    return
  fi
fi

function vsc {
  if (( $# )); then
    $VSCODE $@
  else
    $VSCODE .
  fi
}

alias vsca="$VSCODE --add"
alias vscd="$VSCODE --diff"
alias vscg="$VSCODE --goto"
alias vscn="$VSCODE --new-window"
alias vscr="$VSCODE --reuse-window"
alias vscw="$VSCODE --wait"
alias vscu="$VSCODE --user-data-dir"
alias vscp="$VSCODE --profile"

alias vsced="$VSCODE --extensions-dir"
alias vscie="$VSCODE --install-extension"
alias vscue="$VSCODE --uninstall-extension"

alias vscv="$VSCODE --verbose"
alias vscl="$VSCODE --log"
alias vscde="$VSCODE --disable-extensions"
