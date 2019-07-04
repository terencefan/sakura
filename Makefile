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
	mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/backup
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

git: git-completion
	cp $(CURDIR)/git/.gitconfig ~/

vim: vim-pathogen
	cp $(CURDIR)/vim/.vimrc ~/

bash:
	cp $(CURDIR)/bash/.bash* ~/
	source ~/.bashrc

build: bsh git vim

collect:
	# bash.
	rsync ~/.bashrc $(CURDIR)/bash/
	rsync ~/.bash_* $(CURDIR)/bash/
	# zsh
	rsync ~/.zshrc $(CURDIR)/zsh/
	rsync ~/.bash_* $(CURDIR)/zsh/
	# git.
	cp -r ~/.gitconfig $(CURDIR)/git/
	# vim.
	cp -r ~/.vimrc $(CURDIR)/vim/
