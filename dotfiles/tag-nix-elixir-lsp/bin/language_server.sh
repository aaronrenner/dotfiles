#!/bin/sh

set -e

if [ "$1" = "rebuild" ]; then
  # Compile the nix shell so it will be compiled with elixir 1.7.4 
  # and can be run on any newer elixir version
  exec nix-shell --command "cd $HOME/projects/elixir-ls/ && mix do local.hex --force, local.rebar --force, deps.clean --all, deps.get, deps.compile, compile --force, elixir_ls.release" $HOME/projects/my-nix/elixir-lsp-build.nix
else
  # Don't run this in the nix shell because it's supposed to be run with the
  # same elixir version as the project
  exec $HOME/projects/elixir-ls/release/language_server.sh
fi
