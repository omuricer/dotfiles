# for oh-my-fish/theme-bobthefish
# https://github.com/oh-my-fish/theme-bobthefish
set -g theme_display_git_master_branch yes
set -g theme_title_display_process yes
set -g theme_display_user ssh
set -g theme_git_worktree_support yes
set -g theme_nerd_fonts yes

# ssh-agent
eval (ssh-agent -c)
ssh-add ~/.ssh/keys/*
function on_exit --on-process %self
    echo fish is now exiting
end
