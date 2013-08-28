# -*- coding: utf-8 -*-

import datetime
import os

from fabric.api import cd, local

FILE_NOT_FOUND = u'文件未找到: {}'

def backup(file_path, exc=False):
    if os.path.exists(file_path):
        local('sudo cp {} {}.{}'.format(
            file_path, file_path,
            datetime.datetime.now().strftime('%y%m%d%H%M%S'),
        ))
        return True
    elif exc:
        raise Exception(FILE_NOT_FOUND.format(file_path))
    return False

def source():
    a = local('uname -r')
    backup('/etc/apt/sources.list')

def upgrade():
    local('sudo apt-get upgrade')

def install():
    require_apts = ['git', 'ssh', 'vim', 'vim-gnome', 'ncurses-base']
    for apt in require_apts:
        local('sudo apt-get install {}'.format(apt))

def bash():
    file_path = 'sakura/bash/'
    files = ['bashrc', 'bash_aliases', 'bash_prompt']
    for f in files:
        local('sudo cp {}{} ~/.{}'.format(file_path, f, f))
    local('source ~/.bashrc', shell='/bin/bash')

def fast():
    bash()
