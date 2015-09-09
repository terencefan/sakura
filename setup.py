# -*- coding: utf-8 -*-
import ez_setup
ez_setup.use_setuptools()

from setuptools import setup, find_packages

setup(
    name="sakura",
    version="1.0",
    description="stdrickforce's ubuntu rapid configuration solution",
    long_description=open("README.md").read(),
    author="[STD]Rick_Force",
    author_email="stdrickforce@gmail.com",
    packages=find_packages(),
    pacakage_data={},
    install_requires=[
        "cython>=0.19.1",
        "fabric>=1.6.0",
        "setuptools>=0.7",
    ]
)
