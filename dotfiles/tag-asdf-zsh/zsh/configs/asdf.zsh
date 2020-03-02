autoload -Uz compinit && compinit

# Asdf version manager
test -s "$HOME/.asdf/asdf.sh" && source ~/.asdf/asdf.sh
test -s "$HOME/.asdf/completions/asdf.bash" && source ~/.asdf/completions/asdf.bash
