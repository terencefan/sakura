help:
	@echo 'Makefile for haojing								'
	@echo "\033[33mOnly developed for osx users\033[0m		"
	@echo 'Usage:											'
	@echo '    make collect      collect current configs    '
	@echo '    make build        initialize current configs '
	@echo '    make homebrew     install homebrew on osx    '

git-completion:
	curl -LSso ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

vim-pathogen:
	mkdir -p ~/.vim/autoload ~/.vim/bundle
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git: git-completion
	cp $(CURDIR)/git/.gitconfig ~/

tmux:
	cp $(CURDIR)/tmux/.tmux.conf ~/

vim: vim-pathogen
	cp $(CURDIR)/vim/.vimrc ~/

bash:
	cp $(CURDIR)/bash/.bashrc ~/
	cp $(CURDIR)/bash/.bash_aliases ~/
	cp $(CURDIR)/bash/.bash_prompt ~/
	cp $(CURDIR)/bash/.bash_profile ~/
	source ~/.bashrc

build: bash git vim tmux

collect:
	# bash.
	cp ~/.bashrc $(CURDIR)/bash/
	cp ~/.bash_aliases $(CURDIR)/bash/
	cp ~/.bash_prompt $(CURDIR)/bash/
	cp ~/.bash_profile $(CURDIR)/bash/
	# git.
	cp ~/.gitconfig $(CURDIR)/git/
	# tmux.
	cp ~/.tmux.conf $(CURDIR)/tmux/
	# vim.
	cp ~/.vimrc $(CURDIR)/vim/

