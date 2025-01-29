# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

test -s ~/.alias && . ~/.alias || true


alias 'u'='doas xbps-install -Su'
alias 's'='doas xbps-query -Rs'
alias 'r'='doas xbps-remove -ROo'
alias 'i'='doas xbps-install'
alias 'll'='ls -lh'
alias 'sudo'='doas'


export PS1="\n>> \e[0;36m\d \e[0;31m\A\n  -  \e[0;35m\H\e[m@\e[0;32m\u \e[0;33m\w -> \e[m\n  $ "
