if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

alias ll='ls -laG'
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit
export PATH="/usr/local/opt/gettext/bin:$PATH"
alias k=kubectl
#complete -F __start_kubectl k

export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

#compdef kubectx kctx=kubectx

#local KUBECTX="${HOME}/.kube/kubectx"
#PREV=""
#
#local all_contexts="$(kubectl config get-contexts --output='name')"
##if [ -f "$KUBECTX" ]; then
#    # show '-' only if there's a saved previous context
#    local PREV=$(cat "${KUBECTX}")
#
#    _arguments \
#      "-d:*: :(${all_contexts})" \
#      "(- *): :(- ${all_contexts})"
#else
#    _arguments \
#      "-d:*: :(${all_contexts})" \
#      "(- *): :(${all_contexts})"
#fi
