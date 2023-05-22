# This file conten only alies for 'zsh'

alias lz='lazygit'
alias erc='nvim ~/.zshrc'
alias ncf="nvim ~/.config/nvim/init.vim" 

alias gdir='cd ~/Desktop/programing/github/'
alias pydir='cd ~/Desktop/programing/python/practic'
alias cdir='cd ~/Desktop/programing/c_lan'

alias exiftool_f='exiftool -overwrite_original'
alias eza='nvim ~/.oh-my-zsh/plugins/alias/alias.plugin.zsh'
alias pushcon='python3 ~/Desktop/programing/system_script/Push_Config_To_Github.py'
alias rename_='python3 ~/Desktop/programing/system_script/Rename.py'
alias ff_pp='python3 ~/Desktop/programing/system_script/Play_Vdo.py'
alias ff_r='ffmpeg -f x11grab -s 1366x768 -i :0.0 -f alsa -i hw:0 "/home/pritam/Videos/screencasts/ffmeg_$(date +'%Y-%m-%d_%H-%M-%S').mkv"' # Record screen by using 'ffmpeg'
alias scrcpy_r='scrcpy -m 1080 --max-fps=60 -r ~/Videos/screencasts/scrcpy_$(date +'%Y-%m-%d_%H-%M-%S').mp4'
