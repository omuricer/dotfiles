# for oh-my-fish/theme-bobthefish
# https://github.com/oh-my-fish/theme-bobthefish
set -g theme_display_git_master_branch yes
set -g theme_title_display_process yes
set -g theme_display_user ssh
set -g theme_nerd_fonts yes

# for sshagent
# for wsl 1803 
# http://fish.rubikitch.com/if/
# eval (~/local/src/deb/usr/bin/ssh-agent -c)
eval (ssh-agent -c)
ssh-add ~/.ssh/keys/*

set PATH /usr/local/go/bin /home/omuricer/.cargo/bin $PATH

alias ee='exa -aal --icons'
