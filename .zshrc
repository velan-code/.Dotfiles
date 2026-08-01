if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git 
  zsh-autosuggestions 
  zsh-syntax-highlighting 
  zsh-autopair
  zsh-vi-mode
  web-search 
  catimg 
  colored-man-pages
  command-not-found
  )

source $ZSH/oh-my-zsh.sh


# zsh-vim-mode Config 
ZVM_VI_INSERT_ESCAPE_BINDKEY=jk               #  jk for Esc 
#ZVM_SYSTEM_CLIPBOARD_ENABLED=true             #  enable system clipbroad

mkcd()
{
  mkdir -p "$1" && cd "$1"
}

resize() {
  printf "\e[8;30;100t"
}

sat() {
  osascript -e 'tell application "iTerm2" to tell current window to set bounds to {25, 25, 1100, 900}'
}


alias tree="eza --tree --icons"
alias ls="eza --icons -1"
alias la="eza --icons -A"
alias vim="nvim"

alias safari="open -a safari"

alias ff="fastfetch"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# fzf shell-integration
source <(fzf --zsh)
# zoxide shell-integration
eval "$(zoxide init zsh)"
# fzf and bat integrations 
export FZF_DEFAULT_OPTS="--preview 'bat --color=always --style=numbers --line-range=:500 {}'"

