help:
	@echo 'Makefile for haojing								'
	@echo "\033[33mOnly developed for osx users\033[0m		"
	@echo 'Usage:											'
	@echo '    make collect      collect current configs    '
	@echo '    make build        initialize current configs '

git-completion:
	curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash >> ~/.git-completion.bash

vim-pathogen:
	mkdir -p ~/.vim/autoload ~/.vim/bundle
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

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

build: git-completion vim-pathogen
