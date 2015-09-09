# -*- coding: utf-8 -*-

import datetime
import os

from fabric.api import env, execute, local, task

FILE_NOT_FOUND = u'文件未找到: {}'

USERNAME = 'stdrickforce'
PASSWORD = 'jkluio'

# ubuntu, 163, sjtu
SOURCE_TYPE = '163'

VERSION_NAME = {
    '13.04': 'raring',
    '12.10': 'quantal',
    '12.04': 'precise',
    '10.04': 'lucid',
}

env.hosts = [
    'elemedev@192.168.108.120',
    #'elemedev@testing',
    'root@112.124.30.49'
]


def backup(file_path, exc=False):
    if os.path.exists(file_path):
        local('cp {} {}.{}'.format(
            file_path, file_path,
            datetime.datetime.now().strftime('%y%m%d%H%M%S'),
        ))
        return True
    elif exc:
        raise Exception(FILE_NOT_FOUND.format(file_path))
    return False


def path_exists(file_path):
    # for ubuntu
    # file_path = file_path.replace('~', '/home/{}'.format(USERNAME), 1)
    # for mac osx
    file_path = file_path.replace('~', '/Users/{}'.format(USERNAME), 1)
    return os.path.exists(file_path)


@task
def bash():
    files = ['bashrc', 'bash_aliases', 'bash_profile', 'bash_prompt']
    for f in files:
        local('cp sakura/bash/{} ~/.{}'.format(f, f))
    local('source ~/.bashrc', shell='/bin/bash')


@task
def git():
    local('cp {} {}'.format('sakura/git/gitconfig', '~/.gitconfig'))
    local('curl https://raw.githubusercontent.com/git/git/master/\
        contrib/completion/git-completion.bash -o ~/.git-completion.bash')


@task
def hosts():
    local('cp {} {}'.format('sakura/hosts/hosts', '/etc/hosts'))
    # local('/etc/init.d/networking restart')


@task
def tmux():
    local('cp {} {}'.format('sakura/tmux/tmux.conf', '~/.tmux.conf'))


@task
def vim():
    dir_paths = ['~/.vim/', '~/.vim/backup/', '~/.vim/undo']
    repositories = {
        "https://github.com/gmarik/vundle.git":
        "~/.vim/bundle/vundle",
        "https://github.com/scrooloose/syntastic.git":
        "~/.vim/bundle/syntastic",
        "https://github.com/altercation/vim-colors-solarized.git":
        "~/.vim/bundle/vim-colors-solarized",
        "https://github.com/flazz/vim-colorschemes.git":
        "~/.vim/bundle/vim-colorschemes",
        "https://github.com/Shougo/neocomplcache.vim.git":
        "~/.vim/bundle/neocomplcache",
    }

    for dir_path in dir_paths:
        if path_exists(dir_path):
            continue
        local('mkdir {}'.format(dir_path))

    for url, path in repositories.iteritems():
        if path_exists(path):
            continue
        local('git clone {} {}'.format(url, path))

    local('cp sakura/vim/vimrc ~/.vimrc')


@task
def collect():

    ps = [
        ('~/.vimrc', 'sakura/vim/vimrc'),
        ('~/.bashrc', 'sakura/bash/bashrc'),
        ('~/.bash_prompt', 'sakura/bash/bash_prompt'),
        ('~/.bash_aliases', 'sakura/bash/bash_aliases'),
    ]

    for (p1, p2) in ps:
        local('cp {} {}'.format(p1, p2))
