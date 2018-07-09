set PATH $HOME/.local/bin $PATH
alias pip="python -m pip"



# tmuxが起動していない場合にalias設定を行う
echo $SHLVL
if test $SHLVL = 4
    # tmuxにセッションがなかったら新規セッションを立ち上げた際に分割処理設定を読み込む
    #alias tmux="tmux -2 attach || tmux -2 new-session \; source-file ~/.tmux/new-session"
    tmux
end
