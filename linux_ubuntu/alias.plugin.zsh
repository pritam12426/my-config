# This file conten only alies for 'zsh'

alias lz='lazygit'
alias erc='nvim ~/.zshrc'
alias enc="nvim ~/.config/nvim/init.vim" 

alias addgitignore="python3 ~/Desktop/programing/system_script/git_lgnore/Mk_Git_Ignore.py"

alias gdir='cd ~/Desktop/programing/github/'
alias pydir='cd ~/Desktop/programing/python/practic'
alias cdir='cd ~/Desktop/programing/c_lan'
alias spdir='cd ~/Desktop/programing/system_script/'

alias exiftool_f='exiftool -overwrite_original'
alias eza='nvim ~/.oh-my-zsh/plugins/alias/alias.plugin.zsh'
alias pushcon='python3 ~/Desktop/programing/system_script/push_config_to_github.py'
alias rename_='python3 ~/Desktop/programing/system_script/rename.py'
alias ff_pp='python3 ~/Desktop/programing/system_script/play_ff_pp.py'
alias f_p='python3 ~/Desktop/programing/system_script/play_f_p.py'
alias ff_r='ffmpeg -f x11grab -s 1366x768 -i :0.0 -f alsa -i hw:0 "/home/pritam/Videos/screencasts/ffmeg_$(date +'%Y-%m-%d_%H-%M-%S').mkv"' # Record screen by using 'ffmpeg'
alias scrcpy_r='scrcpy -m 1080 --max-fps=60 -r ~/Videos/screencasts/scrcpy_$(date +'%Y-%m-%d_%H-%M-%S').mp4'

