# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you donât want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && source "$file"
done
unset file

export BASH_SILENCE_DEPRECATION_WARNING=1

# Autocomplete git commands
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Init z jumper
. ~/z.sh


# This loads nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if type "$dircolors" &> /dev/null; then
  eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi
