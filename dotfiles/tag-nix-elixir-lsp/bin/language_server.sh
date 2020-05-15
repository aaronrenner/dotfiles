#!/bin/sh

set -e

if [ "$1" = "rebuild" ]; then
  exec nix-shell --command "cd $HOME/projects/elixir-ls/ && mix do local.hex --force, local.rebar --force, deps.clean --all, deps.get, deps.compile, compile --force, elixir_ls.release" $HOME/projects/my-nix/elixir-lsp-build.nix
else
  exec nix-shell --command $HOME/projects/elixir-ls/release/language_server.sh $HOME/projects/my-nix/elixir-lsp-build.nix
fi
