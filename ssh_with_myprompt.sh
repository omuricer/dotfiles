#!/bin/bash

#ssh $@ -t "export PS1='\[\e[30;47m\] \t \[\e[37;46m\]\[\e[30m\] \W \[\e[36;49m\]\[\e[0m\] '; bash --login"
#ssh $@ -t "export PS1=''; bash --login"
ssh $@ -t "export PS1='\[\e[30;47m\] \u@\h \[\e[37;100m\]\[\e[36;100m\] \W \[\e[90;42m\] \[\e[36;42m\] $(__git_ps1 "(%s)") \[\e[32;49m\] \[\e[0m\]'; bash --login"



