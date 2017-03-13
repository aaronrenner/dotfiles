Aaron Renner's dotfiles
===============

I use [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles) and
aaronrenner/dotfiles together using [the `*.local` convention][dot-local].

[dot-local]: http://robots.thoughtbot.com/manage-team-and-personal-dotfiles-together-with-rcm

Requirements
------------

Set zsh as my login shell.

    chsh -s /bin/zsh

Install [rcm](https://github.com/mike-burns/rcm).

    brew tap thoughtbot/formulae
    brew install rcm

Install
-------

Clone onto my laptop:

    git clone git://github.com/aaronrenner/dotfiles.git

Install:

    env RCRC=$HOME/projects/dotfiles/rcrc rcup

This will create symlinks for config files in my home directory.

I can safely run `rcup` multiple times to update.


Installing on a new laptop
--------------------------

The majority of the laptop set up is automated with the
[thoughtbot/laptop](https://github.com/thoughtbot/laptop) script. Here are the steps

    mkdir ~/projects
    cd ~/projects
    git clone git://github.com/aaronrenner/dotfiles.git
    ln -s ~/projects/dotfiles/.laptop.local

Then fetch the laptop script

    curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac

Since this setup uses asdf instead of rbenv for managing rubies, run `vim mac` and remove
the pieces that deal with installing ruby and rbenv.

When you're finished, run

    sh mac 2>&1 | tee ~/laptop.log

Now the laptop has the nessecary dependences installed and you can run rcup to install
the rest of the dotfiles.

    git clone git://github.com/thoughtbot/dotfiles.git ~/projects/thoughtbot-dotfiles
    env RCRC=$HOME/projects/dotfiles/rcrc rcup

If all goes well, you're ready to go. 🎉


What's in it?
-------------

[git](http://git-scm.com/) configuration:

* `lol` alias for fancy graph of commits
* My name and email.

[zsh](http://zsh.sourceforge.net/FAQ/zshfaq01.html) configuration and aliases:

* [tmuxinator](https://github.com/tmuxinator/tmuxinator) for managing tmux
  sessions
* [asdf](https://github.com/asdf-vm/asdf) for managing versions of ruby, elixir,
  etc.


Credits
-------

This dotfile setup was inspired by [Dan Croak's
dotfiles](https://github.com/croaky/dotfiles).
