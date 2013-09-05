# -*- coding: utf-8 -*-

import datetime
import os

from fabric.api import env, execute, local, task

FILE_NOT_FOUND = u'文件未找到: {}'

USERNAME = 'eleme'
PASSWORD = 'jkluio'

# ubuntu, 163, sjtu
SOURCE_TYPE = '163'

VERSION_NAME = {
    '13.04': 'raring',
    '12.10': 'quantal',
    '12.04': 'precise',
    '10.04': 'lucid',
}

# env.hosts = ['elemedev@192.168.108.120']
env.hosts = ['elemedev@192.168.108.120', 'elemedev@testing']



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
    file_path = 'sakura/bash/'
    files = ['bashrc', 'bash_aliases', 'bash_profile', 'bash_prompt']
    for f in files:
        local('cp sakura/bash/{} ~/.{}'.format(f, f))
    local('source ~/.bashrc', shell='/bin/bash')

@task
def git():
    local('cp {} {}'.format('sakura/git/gitconfig', '~/.gitconfig'))

@task
def hosts():
    local('cp {} {}'.format('sakura/hosts/hosts', '/etc/hosts'))
    local('/etc/init.d/networking restart')


# For Ubuntu Only
@task
def install():
    require_apts = ['git', 'ssh', 'vim', 'vim-gnome', 'ncurses-base',
                    'openssh-server', 'mysql-server', 'mysql-client',
                    'libmysqlclient-dev', 'libevent-dev', 'mytop', 'gcc',
                    'python-dev', 'zlibc', 'zlib1g-dev']
    for apt in require_apts:
        local('apt-get -y install {}'.format(apt))

# For Ubuntu Only
@task
def source():
    content = local('lsb_release -a', capture=True)
    params =  {b[0]:b[1].strip() for b in \
        [a.split(':') for a in content.split('\n')]}
    version = params.get('Release')

    version_name = VERSION_NAME[version]
    input_file_path = 'sakura/source/source-{}.list'.format(SOURCE_TYPE)
    output_file_path = '/etc/apt/sources.list'

    input_file = open(input_file_path, 'r')
    output_file = open(output_file_path, 'w')
    backup(output_file_path)
    output_file.write(input_file.read().replace('{}', version_name))

    input_file.close()
    output_file.close()

    local('apt-get update')


@task
def ssh(server=False):
    if not path_exists('~/.ssh/'):
        local('mkdir ~/.ssh/')

    keys = ['id_rsa', 'id_rsa.pub']
    for key in keys:
        local("cp sakura/ssh/{} ~/.ssh/{}".format(key, key))

    # ssh localhost
    local('cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys')

    if not server:
        return

    for host in env.hosts:
        local('scp ~/.ssh/id_rsa.pub {}:~/.ssh/authorized_keys'.format(host))


@task
def tmux():
    local('cp {} {}'.format('sakura/tmux/tmux.conf', '~/.tmux.conf'))


@task
def upgrade():
    local('apt-get upgrade')

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
def build():
    # source & install must be in the beginning of the command list
    # execute(source)
    execute(install)

    # update configs
    execute(git)
    execute(hosts)
    execute(ssh)
    execute(tmux)
    execute(vim)

    # bash must be in the end of the command list
    execute(bash)
