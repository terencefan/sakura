# -*- coding: utf-8 -*-

MYSQL_SETTINGS = {
    "master": {
        "host": "mysql_master_server",
        "port": 3306,
        "user": "root",
        "passwd": "Root",
        "database": "eleme",
    },
    "slave": {
        "host": "mysql_slave_server",
        "port": 3306,
        "user": "root",
        "passwd": "Root",
        "database": "eleme",
    },
}

REDIS_SETTINGS = {
    "host": "redis_server",
    "port": 6379,
    "password": ""
}

#######
# Repl configs
#######

REPL_MYSQL_SETTINGS = {
    "host": "mysql_slave_server",
    "port": 3306,
    "user": "root",
    "passwd": "Root",
}
REPL_REDIS_SETTINGS = REDIS_SETTINGS

#######
# Async configs
#######

BROKER_URL = "amqp://admin:admin@rabbitmq_server:5672/zeus"

CELERY_RESULT_BACKEND = "redis://redis_server/1"

HAHA = 123

#######
# Service configs
#######

# SMS configs
SMS_MYSQL_SETTINGS = MYSQL_SETTINGS
SMS_REDIS_SETTINGS = REDIS_SETTINGS

# EOS configs
EOS_MYSQL_SETTINGS = MYSQL_SETTINGS
EOS_REDIS_SETTINGS = REDIS_SETTINGS

# ERS configs
ERS_MYSQL_SETTINGS = MYSQL_SETTINGS
ERS_REDIS_SETTINGS = REDIS_SETTINGS

# EUS configs
EUS_MYSQL_SETTINGS = MYSQL_SETTINGS
EUS_REDIS_SETTINGS = REDIS_SETTINGS

# SMS configs
SMS_MYSQL_SETTINGS = MYSQL_SETTINGS
SMS_REDIS_SETTINGS = REDIS_SETTINGS

# OAS configs
OAS_MYSQL_SETTINGS = MYSQL_SETTINGS
OAS_REDIS_SETTINGS = REDIS_SETTINGS

# DMS configs
DMS_MYSQL_SETTINGS = {
    "master": {
        "host": "mysql_master_server",
        "port": 3306,
        "user": "root",
        "passwd": "Root",
        "database": "eleme_dm",
    },
    "slave": {
        "host": "mysql_slave_server",
        "port": 3306,
        "user": "root",
        "passwd": "Root",
        "database": "eleme_dm",
    },
}
DMS_THRIFT_SETTINGS = {
    "host": "0.0.0.0",
    "port": 19100,
    "pool_size": 1,
    "timeout": 3600,
}

# WPS configs
WPS_MYSQL_SETTINGS = MYSQL_SETTINGS
WPS_REDIS_SETTINGS = REDIS_SETTINGS

# TDS configs
TDS_MYSQL_SETTINGS = MYSQL_SETTINGS
TDS_REDIS_SETTINGS = REDIS_SETTINGS

# GEOS configs
GEOS_MYSQL_SETTINGS = {
    "master": {
        "host": "mysql_master_server",
        "port": 3306,
        "user": "root",
        "passwd": "Root",
        "database": "eleme_geos",
    },
    "slave": {
        "host": "mysql_slave_server",
        "port": 3306,
        "user": "root",
        "passwd": "Root",
        "database": "eleme_geos",
    },
}
GEOS_REDIS_SETTINGS = REDIS_SETTINGS

# EES configs
EES_MYSQL_SETTINGS = MYSQL_SETTINGS
EES_REDIS_SETTINGS = REDIS_SETTINGS

# ESS configs
ESS_MYSQL_SETTINGS = MYSQL_SETTINGS
ESS_REDIS_SETTINGS = REDIS_SETTINGS
