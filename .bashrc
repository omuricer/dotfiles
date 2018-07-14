alias pip='python -m pip'

eval `ssh-agent`
ssh-add ~/.ssh/omuricer

if [ $SHLVL = 3 ]; then
  tmux
fi
