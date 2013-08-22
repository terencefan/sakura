# -*- coding: utf-8 -*-

from fabric.api import env, run

env.hosts = ["localhost"]

def host_type():
    run('uname -s')
